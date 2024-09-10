-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable stupid current line highlighting as it looks ugly against transparent and blurred backgrounds
vim.opt.cursorline = false

-- Setting NeoTree background to transparent
vim.api.nvim_create_augroup("nobg", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", {
  desc = "Make NeoTree background transparent",
  group = "nobg",
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
  end,
})
