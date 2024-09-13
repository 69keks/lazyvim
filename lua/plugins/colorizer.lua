return {
  {
    "norcalli/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.o.termguicolors = true
      require("colorizer").setup()
    end,
  },
}
