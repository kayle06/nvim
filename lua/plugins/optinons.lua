-- Buffer Line
-- 不配置时在打开新文件时不会打开新的标签页
vim.opt.termguicolors = true
require("bufferline").setup {}


-- Mason
local lspconfig = require('lspconfig')
require("mason").setup()
require("mason-lspconfig").setup()
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").lua_ls.setup({
--     settings = {
--         Lua = {
--             runtime = {
--                 -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--                 version = "LuaJIT",
--             },
--             diagnostics = {
--                 -- Get the language server to recognize the `vim` global
--                 globals = { "vim", "hs" },
--             },
--             workspace = {
--                 checkThirdParty = false,
--                 -- Make the server aware of Neovim runtime files
--                 library = {
--                     -- vim.api.nvim_get_runtime_file("", true),
--                     "/Applications/Hammerspoon.app/Contents/Resources/extensions/hs/",
--                     vim.fn.expand("~/lualib/share/lua/5.4"),
--                     vim.fn.expand("~/lualib/lib/luarocks/rocks-5.4"),
--                     "/opt/homebrew/opt/openresty/lualib",
--                 },
--             },
--             -- Do not send telemetry data containing a randomized but unique identifier
--             telemetry = {
--                 enable = false,
--             },
--         },
--     },
-- })

require'lspconfig'.pyright.setup{}
