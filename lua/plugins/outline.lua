return {
	{
		"hedyhli/outline.nvim",
		lazy = true,
		cmd = { "Outline", "OutlineOpen" },
		keys = {
			{ "ee", "<cmd>Outline<CR>", desc = "符号大纲" },
		},
		opts = {
			symbols = {
				filter = {
					"Class",
					"Constructor",
					"Enum",
					"Function",
					"Interface",
					"Method",
					"Struct",
					"Field",     -- 结构体字段
					"Property",  -- 类属性
					"EnumMember" -- 枚举值
				},
			},

			symbol_folding = {
				autofold_depth = 99,  -- 默认不折叠
				auto_unfold = {
					hovered = true,   -- 悬停时自动展开
					only = false,     -- 允许多个展开
				},
			},

			outline_items = {
				show_symbol_details = true,    -- 显示符号详情（包括参数）
				show_symbol_lineno = true,     -- 显示行号
				highlight_hovered_item = true,
				auto_set_cursor = true,
				auto_update_events = {
					follow = { "CursorMoved" },
					items = {
						"InsertLeave",
						"WinEnter",
						"BufEnter",
						"BufWinEnter",
						"TabEnter",
						"BufWritePost",
					},
				},
			},

			outline_window = {
				position = "right",            -- 显示在右边
				width = 25,                    -- 宽度 25 列
				relative_width = true,         -- 使用相对宽度
				show_numbers = false,          -- 不显示行号
				show_relative_numbers = false,
				show_cursorline = true,        -- 显示光标线
				hide_cursor = false,           -- 不隐藏光标
				focus_on_open = false,         -- 打开时不切换焦点
				auto_close = false,            -- 不自动关闭
				auto_jump = false,             -- 不自动跳转
				border = "rounded",            -- 圆角边框
			},

			keymaps = {
				close = { "<Esc>", "q" },
				goto_location = "<Cr>",
				peek_location = "o",
				hover_symbol = "K",
				toggle_preview = "P",
				rename_symbol = "r",
				code_actions = "a",
				fold = "h",
				unfold = "l",
				fold_toggle = "<Tab>",
				fold_toggle_all = "<S-Tab>",
			},

			markers = {
				enabled = true,
				icons = {
					collapsed = "",  -- 折叠状态图标
					expanded = "",   -- 展开状态图标
				},
			},
		},
	},
} 