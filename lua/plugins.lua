local plug = require('rdawn.plug')
local setup = require('rdawn.setup')
require('.setup')

plug:start("~/.config/nvim/bundle")

if vim.g.rdawn_themes == "all" then
  setup.allThemes()
else
  setup.minimalThemes()
end

if vim.g.rdawn_wakatime then
  setup.utilities("wakatime")
end

setup.languages(installLanguages)

plug:finish()
