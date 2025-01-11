return {
	{
		"Yggdroot/vim-mark",
		event = "VeryLazy",
		keys = {
			-- 高亮操作
			{ "<leader>m", "<Plug>MarkSet", desc = "高亮当前单词" },
			{ "<leader>M", "<Plug>MarkRegex", desc = "使用正则高亮" },
			{ "<leader>mc", "<Plug>MarkAllClear", desc = "清除所有高亮" },
			-- 导航操作
			{ "*", "<Plug>MarkSearchNext", desc = "下一个相同高亮" },
			{ "#", "<Plug>MarkSearchPrev", desc = "上一个相同高亮" },
			{ "]m", "<Plug>MarkSearchNext", desc = "下一个高亮" },
			{ "[m", "<Plug>MarkSearchPrev", desc = "上一个高亮" },
			-- 清除操作
			{ "<leader>mr", "<Plug>MarkClear", desc = "清除当前高亮" },
		},
		init = function()
			-- 禁用默认键位映射
			vim.g.mw_no_mappings = 1
			
			-- 配置高亮颜色
			vim.cmd([[
				highlight MarkWord1 ctermbg=DarkBlue ctermfg=White guibg=#2d4f67 guifg=White
				highlight MarkWord2 ctermbg=DarkGreen ctermfg=White guibg=#2d674f guifg=White
				highlight MarkWord3 ctermbg=DarkRed ctermfg=White guibg=#672d4f guifg=White
				highlight MarkWord4 ctermbg=DarkYellow ctermfg=White guibg=#67632d guifg=White
				highlight MarkWord5 ctermbg=DarkMagenta ctermfg=White guibg=#4f2d67 guifg=White
				highlight MarkWord6 ctermbg=DarkCyan ctermfg=White guibg=#2d6367 guifg=White
			]])
			
			-- 插件设置
			vim.g.mwDefaultHighlightingPalette = 'maximum' -- 使用最多的高亮颜色
			vim.g.mwHistAdd = '/@' -- 将高亮添加到搜索历史
			vim.g.mwAutoLoadMarks = 1 -- 自动加载上次的高亮
			vim.g.mwAutoSaveMarks = 1 -- 自动保存高亮
			vim.g.mwIgnoreCase = 0 -- 区分大小写
		end,
	},
} 