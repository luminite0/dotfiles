vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("i", "<C-BS>", "<C-W>")
-- move text blocks in visual mode with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- allow cursor to remain in space space after append with J
vim.keymap.set("n", "J", "mzJ`z")
-- allow <C-d> and <C-u> to remain in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- allow search terms to stay in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "=ap", "ma=ap'a")

-- greatest remap ever
-- when pasting over selected text, keeps old text in buffer
vim.keymap.set("x", "<leader>p", [["_dP"]])
-- <leader>Y yanks into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- delete to void register
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
-- start replacing word cursor was on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- lsp
vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<cr>")
vim.keymap.set("n", "grn", vim.lsp.buf.rename)
vim.keymap.set("n", "gra", vim.lsp.buf.code_action)
vim.keymap.set("n", "grr", vim.lsp.buf.references)
-- vim.keymap.set(
--     "n",
--     "<leader>ee",
--     "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
-- )
-- 
-- vim.keymap.set(
--     "n",
--     "<leader>ea",
--     "oassert.NoError(err, \"\")<Esc>F\";a"
-- )
-- 
-- vim.keymap.set(
--     "n",
--     "<leader>ef",
--     "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj"
-- )
-- 
-- vim.keymap.set(
--     "n",
--     "<leader>el",
--     "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i"
-- )
-- 
-- vim.keymap.set("n", "<leader>ca", function()
--     require("cellular-automaton").start_animation("make_it_rain")
-- end)
-- 
-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)
-- 
-- 
