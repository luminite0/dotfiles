return {
  {
    "luminite0/lualine.nvim",
    config = function()
      require("lualine").setup {
        options = {
          icons_enabled = true,
          theme = "night-owl",
          component_separators = { left = "|", right = "|"},
        },
      }
    end,
  },
}
