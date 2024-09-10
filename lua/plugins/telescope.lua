return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      extensions = {
        require("telescope").load_extension("flutter"),
      },
    },
  },
}
