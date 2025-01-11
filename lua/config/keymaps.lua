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

-- -- LSP 导航
-- vim.keymap.set("n", "gd", function() require('telescope.builtin').lsp_definitions() end, { desc = "跳转到定义" })
-- vim.keymap.set("n", "gr", function() require('telescope.builtin').lsp_references() end, { desc = "查看引用" })
-- vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "显示文档" })
-- vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "重命名" })
-- 
-- -- Tags 导航
-- vim.keymap.set("n", "<C-]>", function() require('telescope.builtin').tags() end, { desc = "跳转到定义(多选)" })
-- vim.keymap.set("n", "<C-t>", "<C-o>", { desc = "返回上一位置" })

