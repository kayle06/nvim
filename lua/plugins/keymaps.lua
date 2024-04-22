-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")  -- 当前目录搜索文件
vim.keymap.set("n", "<leader>fw", ":Telescope git_files<cr>")   -- 当前本地仓库搜索文件
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")   -- 未知
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")    -- 展示之前打开的文件

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")
