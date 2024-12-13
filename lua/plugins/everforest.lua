return {
  {
    "sainnhe/everforest",
    lazy = true,
    config = function()
      vim.o.background = "light"
      vim.g.everforest_enable_italic = 1
      vim.cmd("let g:everforest_background = 'soft'")
      -- vim.cmd("let g:everforest_transparent_background = 2")
      vim.cmd("let g:everforest_float_style = 'dim'")
      vim.cmd("let g:everforest_diagnostic_text_highlight = 1")
      vim.cmd("let g:everforest_diagnostic_line_highlight = 1")
      vim.cmd("let g:everforest_diagnostic_virtual_text = 'colored'")
      vim.cmd("let g:everforest_better_performance = 1")
    end,
  },
}
