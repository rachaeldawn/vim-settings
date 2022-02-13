local rdawnCoc = {
  extensions = {
    "coc-html",
    "coc-eslint",
    "coc-emmet",
    "coc-yaml",
    "coc-tsserver",
    "coc-tslint-plugin",
    "coc-swagger",
    "coc-json",
    "coc-go",
    "coc-css",
    "coc-angular",
    "coc-lua",
  }
}

function ReinstallCocExtensions()
  local command = "CocInstall ";
  for _, ext in pairs(rdawnCoc.extensions) do
    command = command .. " " .. ext
  end

  vim.cmd(command)
end

vim.cmd [[
  command! CocReinstallExtensions lua ReinstallCocExtensions()
]]

return rdawnCoc
