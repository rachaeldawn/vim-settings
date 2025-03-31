vim.api.nvim_set_keymap('n', '<Leader>frp', [[:lua FileReplacePreview()<CR>]], { noremap = true, silent = true })

local tmp_original = nil
local tmp_modified = nil
local diff_tabpage = nil

function FileReplacePreview()
  local clipboard_content = vim.fn.getreg('+')
  -- Remove all backticks
  clipboard_content = clipboard_content:gsub('`', '')

  -- Prepare clipboard content lines
  local clipboard_lines = {}
  for line in string.gmatch(clipboard_content, "[^\r\n]+") do
    table.insert(clipboard_lines, line)
  end

  -- Handle optional 'plaintext' label
  if #clipboard_lines >= 1 and clipboard_lines[1]:lower() == 'plaintext' then
    table.remove(clipboard_lines, 1)
  elseif #clipboard_lines >= 2 and clipboard_lines[2]:lower() == 'plaintext' then
    table.remove(clipboard_lines, 2)
  end

  -- Get the file path and read current file
  local file_path = vim.fn.expand('%')
  local file_lines = vim.fn.readfile(file_path)

  -- Create temp files for original and modified
  tmp_original = os.tmpname()
  tmp_modified = os.tmpname()

  vim.fn.writefile(file_lines, tmp_original)
  vim.fn.writefile(clipboard_lines, tmp_modified)

  -- Run diff
  local raw_diff_output = vim.fn.systemlist('diff -u ' .. tmp_original .. ' ' .. tmp_modified)

  -- Filter out diff metadata lines (--- /tmp..., +++ /tmp..., @@ ...)
  local filtered_diff = {}
  for _, line in ipairs(raw_diff_output) do
    if not string.match(line, '^%-%-%- /tmp/')
       and not string.match(line, '^%+%+%+ /tmp/')
       and not string.match(line, '^@@%s%-%d+,%d+%s%+%d+,%d+%s@@') then
      table.insert(filtered_diff, line)
    end
  end

  -- If no differences found, show a simple message
  if #filtered_diff == 0 then
    filtered_diff = {'No differences found.'}
  end

  -- Convert line-by-line +/- markers into separate block markers
  local diff_output = convert_sequences_to_markers(filtered_diff)

  -- Open a new tab for the 3-pane diff view
  vim.cmd('tabnew')
  diff_tabpage = vim.api.nvim_get_current_tabpage()

  -- Left pane: original file
  vim.cmd('edit ' .. file_path)
  vim.cmd('vsplit')

  -- Middle pane: final conflict-based diff
  local diff_bufnr = vim.api.nvim_create_buf(true, false)
  vim.api.nvim_win_set_buf(0, diff_bufnr)
  vim.api.nvim_buf_set_lines(diff_bufnr, 0, -1, false, diff_output)
  vim.api.nvim_buf_set_option(diff_bufnr, 'filetype', 'diff')

  -- Right pane: clipboard content
  vim.cmd('vsplit')
  local clipboard_bufnr = vim.api.nvim_create_buf(true, false)
  vim.api.nvim_win_set_buf(0, clipboard_bufnr)
  vim.api.nvim_buf_set_lines(clipboard_bufnr, 0, -1, false, clipboard_lines)
  vim.api.nvim_buf_set_option(clipboard_bufnr, 'filetype', 'text')

  print('Middle pane shows conflict markers for changed sections. Edit, then close the diff buffer to apply changes.')

  -- Attach autocmd to clean up and apply changes on diff buffer close
  vim.cmd([[autocmd BufDelete ]] .. diff_bufnr .. [[ lua ApplyDiffAndCloseTab()]])
end

--[[
Rules:
1. A sequence of '-' prefixes starts => marker '<<<<<< ORIGINAL' is inserted before the first '-'.
2. A sequence of '-' prefixes ends => marker '<<<<<< END ORIGINAL' is inserted after the last '-'.
3. A sequence of '+' prefixes starts => marker '<<<<<< CLIPBOARD' is inserted before the first '+'.
4. A sequence of '+' prefixes ends => marker '<<<<<< END CLIPBOARD (stats)' is inserted after the last '+'.
5. The end marker for CLIPBOARD includes the line count and % character difference compared to the preceding ORIGINAL block.
]]
function convert_sequences_to_markers(diff_lines)
  local result = {}

  local state = 'common' -- can be 'common', 'original', or 'clipboard'
  local original_block = {}
  local clipboard_block = {}
  local original_char_count = 0
  local original_line_count = 0

  local function start_original()
    table.insert(result, '<<<<<< ORIGINAL')
  end
  local function end_original()
    table.insert(result, '<<<<<< END ORIGINAL')
  end

  local function start_clipboard()
    table.insert(result, '<<<<<< CLIPBOARD')
  end

  local function end_clipboard()
    -- Calculate stats
    local clipboard_char_count = 0
    for _, line in ipairs(clipboard_block) do
      clipboard_char_count = clipboard_char_count + #line
    end
    local clipboard_line_count = #clipboard_block
    local percent_change = 0
    if original_char_count > 0 then
      percent_change = math.floor(((clipboard_char_count - original_char_count) / original_char_count) * 100)
    else
      -- if no original, treat it as 100% new
      if clipboard_char_count > 0 then
        percent_change = 100
      end
    end

    table.insert(result, string.format('<<<<<< END CLIPBOARD ( %+d%%, %d lines )', percent_change, clipboard_line_count))
  end

  local function flush_original_block()
    if #original_block > 0 then
      for _, l in ipairs(original_block) do
        table.insert(result, l)
      end
      original_block = {}
      original_char_count = 0
      original_line_count = 0
    end
  end

  local function flush_clipboard_block()
    if #clipboard_block > 0 then
      for _, l in ipairs(clipboard_block) do
        table.insert(result, l)
      end
      clipboard_block = {}
    end
  end

  for _, line in ipairs(diff_lines) do
    local first_char = string.sub(line, 1, 1)
    if first_char == '-' then
      -- Starting or continuing an original block
      if state == 'clipboard' then
        -- end clipboard block
        flush_clipboard_block()
        end_clipboard()
        state = 'common'
      end
      if state == 'common' then
        -- new original block
        start_original()
        state = 'original'
      end
      local text = string.sub(line, 2)
      table.insert(original_block, text)
      original_char_count = original_char_count + #text
      original_line_count = original_line_count + 1
    elseif first_char == '+' then
      if state == 'original' then
        -- end original block
        flush_original_block()
        end_original()
        state = 'common'
      end
      if state == 'common' then
        -- start clipboard block
        start_clipboard()
        state = 'clipboard'
      end
      local text = string.sub(line, 2)
      table.insert(clipboard_block, text)
    else
      -- a normal line or no changes
      if state == 'original' then
        flush_original_block()
        end_original()
        state = 'common'
      elseif state == 'clipboard' then
        flush_clipboard_block()
        end_clipboard()
        state = 'common'
      end
      -- if line starts with space, remove that space
      if first_char == ' ' then
        table.insert(result, string.sub(line, 2))
      else
        table.insert(result, line)
      end
    end
  end

  -- end any open block at the end
  if state == 'original' then
    flush_original_block()
    end_original()
  elseif state == 'clipboard' then
    flush_clipboard_block()
    end_clipboard()
  end

  return result
end

function ApplyDiffAndCloseTab()
  local buf = vim.api.nvim_get_current_buf()
  local merged_content = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
  local file_path = vim.fn.expand('%')
  vim.fn.writefile(merged_content, file_path)
  print('File replaced with merged content.')
  if diff_tabpage and vim.api.nvim_tabpage_is_valid(diff_tabpage) then
    vim.cmd('tabclose')
  end
  CleanupTempFiles()
end

function CleanupTempFiles()
  if tmp_original then
    os.remove(tmp_original)
    tmp_original = nil
  end
  if tmp_modified then
    os.remove(tmp_modified)
    tmp_modified = nil
  end
end
