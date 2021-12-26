local options = require('options')

local Theme = { }

function Theme:new(theme)
  bg, airline = "dark", nil

  obj = {
    theme      = theme,
    background = bg,
    airline    = airline,
  }

  setmetatable(obj, Theme)

  return obj
end

function Theme:dark()
  self.background = "dark"
  return self
end

function Theme:light()
  self.background = light
  return self
end

function Theme:withAirline(name)
  self.airline = name
  return self
end

function Theme:withSetup(fn)
  self.setup = fn or function() end
  return self
end

function Theme:apply() 
  self.setup = self.setup or function() end

  self:setup()

  colors = "colorscheme %s"

  vim.cmd(colors:format(self.theme))

  options.global{ background = self.background }

  if self.airline then
    options.global("g:airline_theme", self.airline)
  end
end

Theme.__index = Theme

return Theme
