--basic config
vim.g.maplocalleader = ','
vim.g.mapleader = ' '
vim.o.syntax="enable"
vim.o.cursorline=true
vim.o.number=true
vim.o.showmatch=true
vim.o.ruler=true
vim.o.showcmd=true
vim.o.expandtab=false
vim.o.smartindent=true
vim.o.autoindent=true
vim.o.confirm=true
vim.o.ambiwidth="double"
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

require('keymaps')()
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

vim.cmd[[colorscheme monokai-pro]]
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'molokai',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
      },
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
