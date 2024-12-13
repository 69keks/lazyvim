return {
  {
    "shaunsingh/nord.nvim",
    lazy = true,
    -- priority = 1000,
    config = function()
      vim.g.nord_contrast = false
      vim.g.nord_borders = false
      vim.g.nord_disable_background = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false
      vim.g.nord_italic = true

      require("nord").set()
    end,
  },
}
