local opt = vim.opt

vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.swapfile = false
vim.opt.mouse = "a"
vim.opt.scrolloff = 8
vim.g.mapleader = " "

vim.opt.fillchars = { eob = " " }

opt.mouse = "a" 

opt.termguicolors = true

opt.clipboard = "unnamedplus"





opt.swapfile = false 



vim.keymap.set('i', '"', '""<Left>', { noremap = true })


-- Ctrl + c в визуальном режиме копирует в системный буфер
vim.keymap.set('v', '<C-c>', '"+y')

-- Ctrl + v в режиме вставки или командной строке вставляет текст
vim.keymap.set('i', '<C-v>', '<C-r>+')
vim.keymap.set('c', '<C-v>', '<C-r>+')


vim.keymap.set('n', '<C-z>', vim.cmd.undo, { noremap = true, silent = true })

vim.cmd('cmap suspend <Nop>')
vim.cmd('cmap suspend <Nop>')


vim.keymap.set('i', '<S-BS>', '<C-w>', { desc = 'Удалить слово назад' })
