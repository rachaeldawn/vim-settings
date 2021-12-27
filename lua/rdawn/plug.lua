local plug = {
  started = false,
  done = false
}

local begin    = vim.fn['plug#begin']
local loadPlug = vim.fn['plug#load']
local basePlug = vim.fn['plug#']

local function validItem(obj)
  return type(obj) == type({}) or type(obj) == type("")
end

function plug:start(path) 
  begin(path)
  self.started = true
end

function plug:add(obj)
  if obj == nil then
    errMsg = "You have to actually pass an argument. Got %s for plug:add"
    error(errMsg:format(type(add)))
    return
  end

  if not validItem(obj) then
    errMsg = "This only supports strings and tables, got %s"
    error(errMsg:format(type(obj)))
  end

  if type(obj) == type("") then
    self:addPlugin(obj)
    return
  end

  for k, value in pairs(obj) do
    if not validItem(value) then
      errMsg = "Plugin at %d is not a string or object, actually %s" 
      error(errMsg:format(k, type(value)))
    end

    if type(value) == type({}) then
      self:addPlugin(value[1], value[2])
    else
      self:addPlugin(value)
    end
  end
end

function plug:addPlugin(path, arg)
  if not plug.started then
    error("Plug not started, please start it first")
  end

  if plug.done then
    error("You have already called finish")
  end

  if arg then
    basePlug(path, arg)
  else 
    basePlug(path)
  end
end

function plug:finish()
  vim.fn['plug#end']()
  self.done = true
end

return plug
