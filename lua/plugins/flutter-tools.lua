return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = true,
    ft = "dart",
    --    dependencies = {
    --      "nvim-lua/plenary.nvim",
    --      "stevearc/dressing.nvim",
    --    },
    keys = {
      { "<leader>ft", "<cmd>Telescope flutter commands<CR>", desc = "Flutter tools" },
    },
    opts = {
      widget_guides = {
        enabled = true,
      },
      lsp = {
        color = {
          enabled = true,
          background = true,
        },
      },
    },
  },
}
