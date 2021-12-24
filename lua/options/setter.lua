local Mapped = require('options.mapped')

local OptionSetter = {}

local OptionSetter = {}

function OptionSetter:new(settings) 
  assert(self:validTarget(settings), "Requires use of vim.o, vim.bo, vim.wo, or vim.go")

  OptionSetter.__index = self
  OptionSetter.__call  = self.Run

  return setmetatable({ settings = settings }, OptionSetter)
end


function OptionSetter:validTarget(settings) 
  values = {vim.o, vim.bo, vim.wo, vim.go}

  for k, v in pairs(values) do
    if settings == v then
      return v
    end
  end
end

function OptionSetter:Run(name, val) 
  print("name, val", name, val)
  -- name is only ever an object if 
  if type(name) == type({}) then
    for k, v in pairs(name) do
      self:Run(k, v)
    end
    return
  end

  if Mapped:isMapped(val) then
    k, v = val()

    fmt = "Mapped value detected: %s, %s"
    print(fmt:format(k, v))

    return self:Run(k, v)
  end

  old = self.settings[name]

  print("Setting " .. tostring(name) .. " to " .. tostring(val))
  print("Old value: " .. tostring(old))

  self.settings[name] = val
  print("New value: " .. tostring(self.settings[name]))
end

return OptionSetter
