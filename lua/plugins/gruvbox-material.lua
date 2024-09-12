return {
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    config = function()
      vim.o.background = "dark"
      vim.g.gruvbox_material_enable_italic = false
      vim.cmd("let g:gruvbox_material_better_performance=1")
      vim.cmd("let g:gruvbox_material_background= 'hard'")
      vim.cmd("let g:gruvbox_material_transparent_background=2")
      vim.cmd("let g:gruvbox_material_diagnostic_line_highlight=1")
      vim.cmd("let g:gruvbox_material_diagnostic_virtual_text='colored'")
      vim.cmd("let g:gruvbox_material_enable_bold=1")
      vim.cmd("let g:gruvbox_material_enable_italic=0")
      vim.cmd("let g:gruvbox_material_disable_italic_comment=1")
      vim.cmd("let g:gruvbox_material_float_style='dim'")
      -- vim.cmd("let g:gruvbox_material_colors_override = {'bg0': ['#0f111b', '234']}")

      -- changing bg and border colors
      vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
      vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
      vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
    end,
  },
}
