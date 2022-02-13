-- a mapping of all the possible types to their string reps
local table  = 'table'
local string = 'string'
local number = 'number'
local bool   = 'boolean'
local func   = 'function'
local nilVal = 'nil'

local array = table

local types = {
  array   = array,
  table   = table,
  string  = string,
  number  = number,
  bool    = bool,
  boolean = bool,
  fn      = func,
  func    = func,
  method  = func,
}

local function check(t, ...)
  local verifiers = arg
  if not verifiers then
    verifiers = {}
  end

  for k, v in pairs(verifiers) do
    if type(v) ~= func then
      local msg = "Check function %s is not a function, actually %s"
      error(msg:format(k, type(v)))
    end
  end

  return function(val)
    local matches = type(val) == t

    if not matches or table.getn(arg) < 1 then
      return matches
    end

    for _, fn in pairs(verifiers) do
      if not fn(val) then
        return false
      end
    end

    return true
  end
end


types.isArray = check(table, function (val)
  for _ in arg do
    if type(val) ~= number then
      return false
    end
  end

  return true
end)

types.isTable = check(table)

function types:register(name, t, fn)
  local nameFormat = "is%s%s"
  local key = nameFormat:format(name:sub(0, 1):upper(), name:sub(2))

  if types[key] then
    error("Key " .. key .. " already in use")
  end


  types[key] = check(t, fn)
  return types
end

return types
