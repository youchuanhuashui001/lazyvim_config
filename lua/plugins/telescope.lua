return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		keys = {
			-- ctags 跳转（使用原生功能）
			{
				"<C-]>",
				function()
					vim.cmd('tselect ' .. vim.fn.expand('<cword>'))
				end,
				desc = "跳转到定义",
			},
			-- 返回上一位置
			{ "<C-t>", "<C-o>", desc = "返回上一位置" },
		},
	}
}
