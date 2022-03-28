local init   = vim.fn.globpath(".", ".rdawn/vim/init.vim")
if #init < 1 then
  return
end

vim.cmdf("source %s", init)
