-- leader按键映射
vim.g.mapleader = " "

-- noremap：不进行递归映射，silent：不显示命令的执行结果
local opt = { noremap = true, silent = true }

-- 退出 vim
vim.keymap.set("n", "wq", ":wq<CR>", opt)
vim.keymap.set("n", "W", ":w<CR>", opt)
vim.keymap.set("n", "Q", ":q<CR>", opt)
vim.keymap.set("n", "QQ", ":q!<CR>", opt)

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

-- 新增行
vim.keymap.set("n", "<CR>", "o<Esc>", opt)
vim.keymap.set("n", "<S-CR>", "<S-o><Esc>", opt)

-- 粘贴
vim.keymap.set("n", "<C-p>", ":pu<CR>", opt)

-- 跳转到上/下一步
vim.keymap.set("n", "<leader>[", "<C-o>", opt)
vim.keymap.set("n", "<leader>]", "<C-i>", opt)

-- Move selected lines with shift+j or shift+k
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==")
