return {
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowTeal",
        "RainbowGreen",
        "RainbowOrange",
        "RainbowCyan",
      }
      local hooks = require("ibl.hooks")
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#ea6962" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#d8a657" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7daea3" })
        vim.api.nvim_set_hl(0, "RainbowTeal", { fg = "#89b482" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#a9b665" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#e78a43" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#d3869b" })
      end)

      local ibl = require("ibl")
      ibl.setup({
        indent = {
          char = "│",
          tab_char = "│",
          highlight = highlight,
        },
        scope = {
          enabled = false,
        },
        vim.opt.listchars:append("space: "),
      })
    end,
  },
  {
    "echasnovski/mini.indentscope",
    version = false,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          -- "dashboard",
          "neo-tree",
          "Trouble",
          "lazy",
          "mason",
          "notify",
          "lazyterm",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
}
