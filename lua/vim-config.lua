-- remap spacebar to <leader>
vim.cmd("nnoremap <SPACE> <Nop>")
vim.cmd("let mapleader=' '")

-- set tabs to 4 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- sync with macos paste buffer
vim.opt.clipboard = "unnamedplus"

-- add relative line numbers
vim.opt.relativenumber = true

-- fix doge docstrings
