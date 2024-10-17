return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    -- "nvim-tree/nvim-web-devicons",
    "justinhj/battery.nvim",
  },
  config = function()
    local lualine = require("lualine")

    local colors = {
      blue = "#7aa2f7",
      green = "#9ece6a",
      violet = "#bb9af7",
      yellow = "#e0af68",
      red = "#f7768e",
      cream = "#c0caf5",
      black = "#414868",
      grey = "#28344a",
      dark = "#17171e",
    }

    local tokyonight = {
      normal = {
        a = { bg = colors.dark, fg = colors.cream, gui = "bold" },
        b = { bg = colors.grey, fg = colors.cream, gui = "bold" },
        c = { bg = colors.blue, fg = colors.black, gui = "bold" },
      },
      insert = {
        a = { bg = colors.blue, fg = colors.dark, gui = "bold" },
        c = { bg = colors.violet, fg = colors.dark, gui = "bold" },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.black, gui = "bold" },
        c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
      },
      command = {
        a = { bg = colors.green, fg = colors.dark, gui = "bold" },
        c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
      },
      replace = {
        a = { bg = colors.blue, fg = colors.black, gui = "bold" },
        c = { bg = colors.violet, fg = colors.black, gui = "bold" },
      },
      inactive = {
        a = { bg = colors.green, fg = colors.black, gui = "bold" },
        c = { bg = colors.black, fg = colors.cream, gui = "bold" },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = tokyonight,
        disabled_filetypes = {
          statusline = {
            "dashboard",
            "neo-tree",
          },
        },
        component_separators = { left = "│", right = "│" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {
          "mode",
        },
        lualine_b = {
          "branch",
          "diff",
          "diagnostics",
          {
            "buffers",
            buffers_color = {
              active = { bg = colors.yellow, fg = colors.dark, gui = "bold" },
              inactive = { bg = colors.grey, fg = colors.cream, gui = "italic" },
            },
            symbols = {
              modified = " ●",
              alternate_file = "",
              directory = " ",
            },
            mode = 2,
          },
        },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {
          "searchcount",
          "selectioncount",
          "progress",
          "filetype",
        },
        lualine_z = {
          function()
            return "  " .. os.date("%I:%M%P")
          end,
          function()
            return require("battery").get_status_line()
          end,
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    })
  end,
}

-- vim:ft=lua
