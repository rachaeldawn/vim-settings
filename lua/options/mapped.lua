local types = require "types"

local Mapped = { }

function Mapped:new(key, value) 
  obj = { key = key, value = value, _isMapped = true }
  obj = setmetatable(obj, self)

  Mapped.__index = Mapped

  return obj
end

function Mapped:isMapped(arg) 
  return type(arg) == types.table and arg._isMapped
end


function Mapped:setValue(val) 
  self.value = val
  return self
end

function Mapped:setKey(key) 
  self.key = key
  return self
end

function Mapped:__call() 
  return self.key, self.value
end

return Mapped
