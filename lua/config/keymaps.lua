-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 在插入模式下，按 jk 退出并保存
vim.keymap.set("i", "jk", "<ESC>:w<CR>", { noremap = true, silent = true, desc = "退出插入模式并保存" })


-- 删除原有的终端映射
vim.keymap.del("n", "<c-/>")
vim.keymap.del("n", "<c-_>")

-- 添加新的终端映射
vim.keymap.set("n", "<c-/>", function()
	require("snacks").terminal(nil, { cwd = vim.loop.cwd() })
end, { desc = "Terminal (cwd)" })

vim.keymap.set("n", "<c-_>", function()
	require("snacks").terminal(nil, { cwd = vim.loop.cwd() })
end, { desc = "which_key_ignore" })

