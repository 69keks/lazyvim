return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "justinhj/battery.nvim",
  },
  config = function()
    local lualine = require("lualine")

    local colors = {
      blue = "#7daea3",
      green = "#a9b665",
      violet = "#d3869b",
      orange = "#e78a4e",
      yellow = "#d8a657",
      red = "#ea6962",
      cream = "#d4be98",
      black = "#0f111b",
      grey = "#393939",
      dark = "#292929",
    }

    local gruv_material = {
      normal = {
        a = { bg = colors.dark, fg = colors.cream },
        b = { bg = colors.grey, fg = colors.cream },
        c = { bg = colors.blue, fg = colors.black },
      },
      insert = {
        a = { bg = colors.blue, fg = colors.black },
        c = { bg = colors.orange, fg = colors.black },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.black },
        c = { bg = colors.dark, fg = colors.cream },
      },
      command = {
        a = { bg = colors.green, fg = colors.black },
        c = { bg = colors.black, fg = colors.cream },
      },
      replace = {
        a = { bg = colors.blue, fg = colors.black },
        c = { bg = colors.violet, fg = colors.black },
      },
      inactive = {
        a = { bg = colors.green, fg = colors.black, gui = "italic" },
        c = { bg = colors.black, fg = colors.cream, gui = "italic" },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        globalstatus = false,
        theme = gruv_material,
        -- theme = "auto",
        disabled_filetypes = {
          statusline = {
            "dashboard",
            "neo-tree",
            "snacks_dashboard",
          },
        },
        component_separators = { left = "", right = "" },
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
              active = { bg = colors.yellow, fg = colors.black, gui = "italic" },
              inactive = { bg = colors.grey, fg = colors.cream },
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
          "selectioncount",
          "location",
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
