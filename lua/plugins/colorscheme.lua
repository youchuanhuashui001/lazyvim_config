return {
	-- 添加 onedark 主题
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			require("onedark").setup({
				-- 主题风格选项: dark, darker, cool, deep, warm, warmer
				style = "deep",
				-- 是否使用透明背景
				transparent = false,
				-- 代码样式设置
				code_style = {
					comments = "italic",
					keywords = "bold",
					functions = "none",
					strings = "none",
					variables = "none"
				},
			})
			-- 加载主题
			-- require("onedark").load()
		end,
	},

	-- cyberdream 主题
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				transparent = false,
				italic_comments = true,
				hide_fillchars = false,
				borderless_telescope = true,
				terminal_colors = true,
				theme = {
					variant = "default",  -- "default" 或 "light"
					saturation = 1,       -- 0-1 之间的值
				},
			})
		end,
	},

	-- eldritch 主题
	{
		"eldritch-theme/eldritch.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("eldritch").setup({
				transparent = false,
				terminal_colors = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
					sidebars = "dark",
					floats = "dark",
				},
				sidebars = { "qf", "help" },
				hide_inactive_statusline = false,
				dim_inactive = false,
				lualine_bold = true,
			})
		end,
	},

	-- 配置 LazyVim 选择主题 
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "onedark",
			-- colorscheme = "cyberdream",
			-- colorscheme = "eldritch",
		},
	},
}