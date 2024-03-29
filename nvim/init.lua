--basic config
vim.o.syntax="enable"
vim.o.cursorline=true
vim.o.number=true
vim.o.showmatch=true
vim.o.laststatus="2"
vim.o.ruler=true
vim.o.showcmd=true
vim.o.shiftwidth="4"
vim.o.tabstop="4"
vim.o.softtabstop="4"
vim.o.expandtab=false
vim.o.smartindent=true
vim.o.autoindent=true
vim.o.confirm=true
vim.o.history="1000"
vim.o.ambiwidth="double"
vim.o.textwidth="80"
vim.o.linebreak=true
vim.o.wildmenu=true
vim.o.mouse="a"

vim.o.hlsearch=true
vim.o.incsearch=true
vim.o.ignorecase=true
vim.o.smartcase=true
vim.o.encoding="utf-8"

vim.o.autowrite=true
vim.o.backup=false
vim.o.writebackup=false
vim.o.swapfile=false
vim.o.undofile=true
vim.o.autoread=true
vim.o.paste=true

--lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " 
require("lazy").setup("plugins")

vim.cmd[[colorscheme tokyonight]]
