return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		keys = {
			-- ctags 跳转（使用原生功能 + quickfix）
			{
				"<C-]>",
				function()
					local word = vim.fn.expand('<cword>')
					local taglist = vim.fn.taglist('^' .. word .. '$')
					if #taglist == 0 then
						vim.notify("No tags found", vim.log.levels.WARN)
					elseif #taglist == 1 then
						vim.cmd('tag ' .. word)
					else
						-- 创建 quickfix 列表
						local qf_list = {}
						for _, tag in ipairs(taglist) do
							table.insert(qf_list, {
								filename = tag.filename,
								lnum = tag.cmd:match('^%d+$') or 1, -- 如果 cmd 是行号则使用，否则默认为 1
								text = tag.cmd:match('^/^%s*(.-)%s*$/$') or tag.cmd, -- 去除前后的 /^ 和 $/
								type = tag.kind or '',
							})
						end
						vim.fn.setqflist(qf_list)
						vim.cmd('copen')  -- 打开 quickfix 窗口
					end
				end,
				desc = "跳转到定义（使用 quickfix 显示列表）",
			},
			-- 返回上一位置
			{ "<C-t>", "<C-o>", desc = "返回上一位置" },
		},
	}
}