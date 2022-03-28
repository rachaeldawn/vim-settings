local Mapped = require('options.mapped')

local validTargets = {
  vim.o,
  vim.bo,
  vim.wo,
  vim.go,
  vim.g,
  vim.b,
  vim.w,
  vim.t,
  vim.v,
  vim.env,
  vim.opt,
  vim.opt_local,
  vim.opt_global,
}

local OptionSetter = { settings = nil }

local messages = {
  invalidNewTarget = "Requires use of vim.o, vim.bo, vim.wo, or vim.go"
}

--[[
-- OptionSetter:new
-- @param settings The setting target you want to set values upon
--]]
function OptionSetter:new(settings)
  assert(self:validTarget(settings), messages.invalidNewTarget)

  local obj = { settings = settings }
  setmetatable(obj, self)
  self.__index = self
  return obj
end


function OptionSetter:validTarget(settings)
  for _, v in pairs(validTargets) do
    if settings == v then
      return v
    end
  end
end

function OptionSetter:apply(name, val)
  -- name is only ever an object if
  if type(name) == type({}) then
    for k, v in pairs(name) do
      self:apply(k, v)
    end

    return
  end

  if Mapped:isMapped(val) then
    return val:applyTo(self.settings)
  end

  self.settings[name] = val
end

OptionSetter.__call = OptionSetter.apply

return OptionSetter
