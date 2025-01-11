-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 确保终端支持真彩色
vim.opt.termguicolors = true

vim.opt.fileencoding = "utf-8"      -- 确保文件使用 UTF-8 编码
vim.opt.expandtab = false           -- 不要将 tab 转换为空格
vim.opt.shiftwidth = 8              -- 缩进宽度为 8
vim.opt.tabstop = 8                 -- tab 字符显示的宽度为 8
vim.opt.softtabstop = 8             -- 编辑时 tab 的宽度为 8

-- 关闭平滑滚动
if vim.fn.has("nvim-0.10") == 1 then
	vim.opt.smoothscroll = false     -- 禁用平滑滚动
end

-- 关闭相对行号，但保留普通行号
vim.opt.relativenumber = false      -- 禁用相对行号
vim.opt.number = true               -- 保留普通行号显示

-- 全局禁用自动格式化:LSP 会自动修改 format
vim.g.autoformat = false

-- 全局禁用诊断功能
vim.diagnostic.disable()
