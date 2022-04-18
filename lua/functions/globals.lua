function _G.printf(fmt, ...)
  if select('#', ...) < 1 then
    return print(fmt)
  end

  print(fmt:format(...))
end

function _G.sprintf(fmt, ...)
  return fmt:format(...)
end

function _G.addRuntime(...)
  local items = ...
  if type(items) == "string" then
    items = {items}
  end

  for _, v in pairs(items) do
    vim.cmdf("set rtp+=%s", v)
  end
end
