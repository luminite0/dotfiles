vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- double trailing slash stores files using full paths, so two different files with same
-- name aren't clobbered
local prefix = vim.env.XDG_CONFIG_HOME or vim.fn.expand("~/.config")
--vim.opt.undodir = "~/.config/nvim/.undo//"
--vim.opt.backupdir = "~/.config/nvim/.backup//"
--vim.opt.directory = "~/.config/nvim/.swp//"

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- fix background transparency
vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

-- function FixBackground()
	-- 0 means global space, every window gets it
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
-- end
vim.opt.showtabline = 0
