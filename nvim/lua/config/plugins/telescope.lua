return {
  {
    "luminite0/telescope.nvim",
    -- tag = "0.1.8",
    dependencies = {
      "luminite0/plenary.nvim"
    },
    config = function()
      local builtin = require("telescope.builtin")
      local fb_actions = require("telescope").extensions.file_browser.actions

    
      -- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) 
      -- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      -- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      require("telescope").setup {
        defaults = {
          mappings = {},
        },
        extensions = {
          file_browser = {
            -- theme = "night-owl",
            hijack_netrw = true,
            mappings = {
              ["i"] = {
                ["<C-h>"] = fb_actions.goto_home_dir,
                ["<C-x>"] = function(prompt_bufnr)
                end,
                ["<Enter>"] = "file_tab",
              },
              ["n"] = {
                ["<Enter>"] = "file_vsplit",
              },
            },
          },
        },
      }


      require("telescope").load_extension("file_browser")

      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>gg", builtin.git_files, {})
      vim.keymap.set("n", "<leader>df", builtin.live_grep, {})
      -- open file_browser with the path of the current buffer
      vim.keymap.set("n", "<leader>e", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
    end,
  },
  {
    "luminite0/telescope-file-browser.nvim",
    dependencies = {
      "luminite0/telescope.nvim",
      "luminite0/plenary.nvim"
    }

  }
}
