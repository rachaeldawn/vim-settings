local OptionSetter = require('options.setter')

local Mapped = require('options.mapped')

local options = {
  vim         = OptionSetter:new(vim.o),
  vimBuffer   = OptionSetter:new(vim.bo),
  vimWindoow  = OptionSetter:new(vim.wo),
  vimGlobal   = OptionSetter:new(vim.go),
  global      = OptionSetter:new(vim.g),
  buffer      = OptionSetter:new(vim.b),
  window      = OptionSetter:new(vim.w),
  tabbed      = OptionSetter:new(vim.t),
  vars        = OptionSetter:new(vim.v),
  environment = OptionSetter:new(vim.env),
}

function options.newMapped(k, v)
  return Mapped:new(k, v)
end

return options
