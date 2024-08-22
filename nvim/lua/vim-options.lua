vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
-- Show line numbers
vim.cmd("set number")
-- Highlight trailing spaces
vim.cmd("autocmd BufRead,BufNewFile * match Error /\\s\\+$/")
-- Enable auto indentation
vim.cmd("set autoindent")
-- Turn on syntax highlighting
vim.cmd("syntax on")
-- Enable file type-specific indentation
vim.cmd("filetype indent on")
-- Set backspace so it acts more intuitively
vim.cmd("set backspace=indent,eol,start")
vim.g.mapleader = " "
