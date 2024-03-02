local set = vim.o

set.encoding = "utf-8"
set.fileencoding = "utf-8"

set.number = true -- 开启行号
set.relativenumber = true -- 行号相对路径
set.clipboard = "unnamed" -- yy 复制时也同步到剪贴板
set.cursorline = true -- 高亮显示当前行
set.signcolumn = "yes"
set.colorcolumn = "80" -- 在 80 列显示垂直线
set.tabstop = 4 -- 设定Tab占用的空间大小为4个空格
set.softtabstop = 4 -- 设定按下Tab键时占用的空间大小为4个空格
set.shiftround = true -- 行首缩进会调整为shiftwidth的整数倍
set.expandtab = true -- 输入Tab时插入空格
set.shiftwidth = 4 -- 缩进或反缩进时，使用4个空格的宽度
set.autoindent = true -- 自动缩进
set.smartindent = true -- 智能缩进
set.ignorecase = true -- 搜索时忽略大小写
set.smartcase = true -- 结合ignorecase选项，如果搜索内容包含大写，则不忽略大小写
set.hlsearch = true -- 搜索时高亮显示
set.incsearch = true -- 键入内容时即时搜索
set.cmdheight = 1 -- 命令行高度
set.autoread = true -- 当文件被外部程序修改后自动读取内容
-- set.wrap = false -- 不自动换行
set.timeoutlen = 500 -- keymap或者键盘序列等待时间
set.termguicolors = true -- 使用 GUI 颜色，如果终端支持
set.pumheight = 16
set.showtabline = 2 -- 始终显示标签栏
-- set.showmode = false -- 不显示当前模式

-- 在 copy 后高亮
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})
