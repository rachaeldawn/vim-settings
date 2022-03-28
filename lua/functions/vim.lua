function vim.cmdf (fmt, ...)
  if select('#', ...) < 1 then
    return vim.cmd(fmt)
  end

  return vim.cmd(string.format(fmt, ...))
end
