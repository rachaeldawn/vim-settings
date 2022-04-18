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

-- printf("vimFolder %s", vimFolder)

-- if #vimInit < 1 and #luaFolder < 1 then
  -- return
-- end

-- if #luaFolder > 0 then
  -- addRuntime(basePath)
-- end

-- vim.cmd[[set rtp]]

-- vim.cmdf("source %s/%s", basePath, "init.vim")
