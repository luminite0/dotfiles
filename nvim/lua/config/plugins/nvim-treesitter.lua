return {
  {
    "luminite0/nvim-treesitter",
    -- ensure language parsers updated whenever nvim-treesitter is updated
    build = ":TSUpdate",
    -- only load plugin when opening buffer for already existing/new file
    event = { "BufReadPre", "BufNewFile" },
    -- load nvim-treesitter-textobjects whenever nvim-treesitter loads
    dependencies = {
      "luminite0/nvim-treesitter-textobjects",
    },
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup({
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          "json",
          "python",
          "c",
          "arduino",
          "rust",
          "yaml",
          "html",
          "css",
          "javascript",
          "markdown",
          "markdown_inline",
          "bash",
          "lua",
          "vim",
          "dockerfile",
          "gitignore",
        },
        incremental_selection = {
          enable = true,
          kemaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
  }
}
