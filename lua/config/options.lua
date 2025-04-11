vim.opt.number = true

vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.expandtab  = true
vim.opt.tabstop = 4 -- tab viene sostituito con 4 spazi
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus" -- il buffer per copiare e incollare è sincronizzato con il sistema
vim.opt.scrolloff = 999 -- fa si che la linea corrente sia sempre al centro dello schermo

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.termguicolors = true

vim.g.mapleader = " "

vim.opt.termguicolors = true

vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { desc = 'Toggle file tree' })
