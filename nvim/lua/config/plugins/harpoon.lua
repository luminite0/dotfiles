return {
  {
    "luminite0/harpoon",
    dependencies = {
      "luminite0/plenary.nvim"
    },
    vim.keymap.set({"n", "v"}, "<leader>a", function () require('harpoon.mark').add_file() end),
    vim.keymap.set({"n", "v"}, "<leader>m", function () require('harpoon.ui').toggle_quick_menu() end),
    vim.keymap.set({"n", "v"}, "<C-j>", function () require('harpoon.ui').nav_next() end),
    vim.keymap.set({"n", "v"}, "<C-k>", function () require('harpoon.ui').nav_prev() end)
    
  }
}
