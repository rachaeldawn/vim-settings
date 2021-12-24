local OptionSetter = require('options.setter')

return {
  vim        = OptionSetter:new(vim.o),
  vimBuffer  = OptionSetter:new(vim.bo),
  vimWindoow = OptionSetter:new(vim.wo),
  vimGlobal  = OptionSetter:new(vim.go),
  global     = OptionSetter:new(vim.g),
  buffer     = OptionSetter:new(vim.b),
  window     = OptionSetter:new(vim.w),
  tab        = OptionSetter:new(vim.t),
  vars       = OptionSetter:new(vim.v),
  env        = OptionSetter:new(vim.env),
}

