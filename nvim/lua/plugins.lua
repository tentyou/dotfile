return{
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opt = {},
},
{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {}
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
}
