return {
  {
    "luminite0/nvim-treesitter-textobjects",
    lazy = true,
    config = function()
      require("nvim-treesitter.configs").setup({
        textobjects = {
          select = {
            enable = true,
            lookahead = true,

            keymaps = {
              ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
              ["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },
            },
          },
        },
      })
    end,
  },
}
