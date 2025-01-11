return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		priority = 1000,
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		event = "BufReadPost",
		config = function()
			local rainbow_delimiters = require("rainbow-delimiters")

			require("rainbow-delimiters.setup").setup({
				strategy = {
					[""] = rainbow_delimiters.strategy["global"],
					commonlisp = rainbow_delimiters.strategy["local"],
				},
				query = {
					[""] = "rainbow-delimiters",
					lua = "rainbow-blocks",
				},
				highlight = {
					"RainbowDelimiterYellow",
					"RainbowDelimiterBlue",
					"RainbowDelimiterOrange",
					"RainbowDelimiterGreen",
					"RainbowDelimiterViolet",
					"RainbowDelimiterCyan",
					"RainbowDelimiterRed",
				},
			})
		end,
	},
	{
		"ntpeters/vim-better-whitespace",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			-- 启用插件
			vim.g.better_whitespace_enabled = 1
			
			-- 保存时自动删除行尾空白字符
			vim.g.strip_whitespace_on_save = 0
			
			-- 保存时不询问
			vim.g.strip_whitespace_confirm = 1
			
			-- 忽略空行
			vim.g.better_whitespace_skip_empty_lines = 0
			
			-- 设置空白字符高亮颜色
			vim.cmd([[highlight ExtraWhitespace ctermbg=red guibg=red]])
			
			-- 设置文件类型黑名单
			vim.g.better_whitespace_filetypes_blacklist = {
				"diff",
				"git",
				"gitcommit",
				"unite",
				"qf",
				"help",
				"markdown",
				"fugitive",
				"toggleterm",
				"lazy",
				"mason",
				"notify",
				"TelescopePrompt",
			}
		end,
	},
} 