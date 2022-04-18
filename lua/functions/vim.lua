function vim.cmdf (fmt, ...)
  if select('#', ...) < 1 then
    return vim.cmd(fmt)
  end

  local command = sprintf(fmt, ...)
  return vim.cmd(command)
end
