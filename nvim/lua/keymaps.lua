-- ~/.config/nvim/lua/keymaps.lua

-- 定义一个 local 变量来存储常用的设置函数
local keymap = vim.keymap.set

-- 定义一个 setup 函数，该函数将在 init.lua 中被调用
return function()

  -- 设置 Leader 键为空格（可选，但推荐）
  vim.g.mapleader = ' '
  vim.g.maplocalleader = ' '

  -- 通用 Neovim 快捷键示例
  -- 在普通模式下，按下 <leader> + e 会切换 NvimTree
  keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

  -- 在普通模式下，使用 Ctrl+h/j/k/l 在窗口间切换
  keymap("n", "<C-h>", "<C-w>h", { desc = "Window left" })
  keymap("n", "<C-j>", "<C-w>j", { desc = "Window down" })
  keymap("n", "<C-k>", "<C-w>k", { desc = "Window up" })
  keymap("n", "<C-l>", "<C-w>l", { desc = "Window right" })

  -- 在插入模式下快速退出到普通模式 (推荐)
  keymap("i", "jk", "<ESC>", { desc = "Exit insert mode" })

  -- ... 在这里添加所有其他的快捷键 ...

end

