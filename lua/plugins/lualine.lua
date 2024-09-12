return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "justinhj/battery.nvim",
    },
    opts = {
      theme = "gruvbox_material",
      sections = {
        lualine_z = {
          function()
            return " " .. os.date("%R")
          end,
          function()
            return require("battery").get_status_line()
          end,
        },
      },
    },
  },
}
