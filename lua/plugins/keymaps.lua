-- telescope 已在 Lazy 中定义(懒加载)
-- vim.keymap.set("n", "<leader>fs", ":Telescope find_files<CR>")  -- 当前目录搜索文件
-- vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")   -- 当前目录字符串检索文件
-- vim.keymap.set("n", "<leader>fw", ":Telescope git_files<CR>")   -- 当前本地仓库检索文件
-- vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<CR>")    -- 展示之前打开的文件

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>") -- 打开文件数

-- buffer-line
vim.keymap.set("n", "<S-k>", ":bn<CR>") -- 下一标签页
vim.keymap.set("n", "<S-j>", ":bp<CR>") -- 上一标签页
vim.keymap.set("n", "<S-x>", ":bd<CR>") -- 关闭当前标签页

-- commnet
vim.keymap.set({"n", "v"}, "gc", ":CommentToggle<CR>") -- 注释选中行

