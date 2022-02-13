local OptionSetter = require('options.setter')

local Mapped = require('options.mapped')

local options = {
  -- set will allow you to replicate `set {something}`
  set = OptionSetter:new(vim.o),
  -- window will allow you to
  window = OptionSetter:new(vim.wo),
  buffer = OptionSetter:new(vim.bo),
  global = OptionSetter:new(vim.go),


  -- Everything under custom returns nil if the key is invalid
  custom = {
    window = OptionSetter:new(vim.w),
    buffer = OptionSetter:new(vim.b),
    tabbed = OptionSetter:new(vim.t),
  },

  vars   = OptionSetter:new(vim.v),
  globalVars = OptionSetter:new(vim.g),
  env = OptionSetter:new(vim.env)
}

function options:__call(k, v)
  return options:set(k, v)
end

function options.newMapped(k, v)
  return Mapped:new(k, v)
end

setmetatable(options, options)

return options
