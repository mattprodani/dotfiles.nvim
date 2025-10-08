vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.scrolloff = 10
vim.opt.hlsearch = true



vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2



vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = "(f)ind (f)iles" })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = "(f)ind (b)uffers" })
vim.keymap.set('n', '<leader>fc', '<cmd>Telescope current_buffer_fuzzy_find<cr>', { desc = "(f)ind in (c)urrent buffer" })
vim.keymap.set('n', '<leader>km', '<cmd>Telescope keymaps<cr>', { desc = "(k)ey (m)aps" })
vim.keymap.set('n', '<leader>sg', '<cmd>Telescope live_grep<cr>', { desc = "(s)earch (g)rep" })
vim.keymap.set('n', '<leader>sv', '<cmd>split | Oil<cr>', { desc = "(s)plit (v)ertical and open oil" })
vim.keymap.set('n', ';', ':', { desc = "remap for :" })
vim.keymap.set('n', ':', ';', { desc = "remap for :" })


require("lazy-bootstrap")
require("lsp")
