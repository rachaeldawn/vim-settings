local options = {}
local OptionSetter = require('options.setter')

options.set       = OptionSetter:new(vim.o)
options.setGlobal = OptionSetter:new(vim.go)
options.setWindow = OptionSetter:new(vim.wo)
options.setBuffer = OptionSetter:new(vim.bo)

return options
