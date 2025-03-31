vim.api.nvim_set_keymap('n', '<Leader>fgc', [[:lua FileGitCommit()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fgC', [[:lua FileGitCommitConfirm()<CR>]], { noremap = true, silent = true })

function FileGitCommitConfirm()
  -- Save the current file
  vim.cmd('write')
  
  -- Prompt for commit message
  local commit_msg = vim.fn.input('Commit message: ')
  
  -- Get the current file name
  local file_name = vim.fn.expand('%')
  
  -- Run git add and git commit
  vim.cmd('!git add ' .. file_name .. ' && git commit ' .. file_name .. ' -m "' .. commit_msg .. '"')
end

function FileGitCommit()
  -- Save the current file
  vim.cmd('write')

  -- Get the current file name
  local file_name = vim.fn.expand('%')

  -- Prompt for commit message
  local commit_msg = vim.fn.input('Commit message: ')

  -- Preview the commit message and file
  local preview = string.format('Committing file: %s\nCommit message: %s\nAre you sure? (y/n)', file_name, commit_msg)

  -- Ask for confirmation
  local confirmation = vim.fn.input(preview .. ' ')

  if confirmation == 'y' or confirmation == 'Y' then
    -- Run git add and git commit
    vim.cmd('!git add ' .. file_name .. ' && git commit ' .. file_name .. ' -m "' .. commit_msg .. '"')
  else
    print('Commit canceled.')
  end
end
