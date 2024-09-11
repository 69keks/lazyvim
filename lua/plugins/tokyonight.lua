return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = false,
      on_colors = function(colors)
        colors.bg = "#0f111b"
      end,
      styles = {
        comments = {
          italic = false,
        },
        keywords = {
          italic = false,
        },
      },
    },
  },
}
