-- leader按键映射
vim.g.mapleader = " "

-- noremap：不进行递归映射，silent：不显示命令的执行结果
local opt = { noremap = true, silent = true }

-- 窗口按键映射
vim.keymap.set("n", "<leader>v", "<C-w>v", opt)
vim.keymap.set("n", "<leader>s", "<C-w>s", opt)
vim.keymap.set("n", "<C-h>", "<C-w>h", opt)
vim.keymap.set("n", "<C-j>", "<C-w>j", opt)
vim.keymap.set("n", "<C-k>", "<C-w>k", opt)
vim.keymap.set("n", "<C-l>", "<C-w>l", opt)

-- 绝对行跳转
-- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

-- 翻页功能
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bn<cr>")
