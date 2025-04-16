return {
  {
    "luminite0/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      -- require("lspconfig").anakin_language_server.setup{}
      require("lspconfig").lua_ls.setup {}
      require("lspconfig").basedpyright.setup {}
      require("lspconfig").ccls.setup {
        init_options = {
          clang = {
            extraArgs = { "--query-driver=/usr/bin/arm-none-eabi-gcc" };
          };
        }
      }
    end,
  }
}
