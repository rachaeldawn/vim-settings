local cwd       = vim.fn.getcwd()

local basePath  = sprintf("%s/.rdawn/vim", cwd)
local vimFolder = vim.fn.globpath(basePath, "*")

local vimFile = sprintf("%s/init.vim", basePath)
local luaDir  = sprintf("%s/lua", basePath)

if vim.fn.isdirectory(basePath) then
  addRuntime(basePath)
end

if vimFolder:match("lua") and vim.fn.isdirectory(luaDir) then
  addRuntime(basePath)
end

if vimFolder:match('init.vim') then
  vim.cmdf("source %s", vimFile)
end
