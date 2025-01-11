return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{
				"<leader>e",
				function()
					require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
				end,
				desc = "Explorer NeoTree (cwd)",
			},
			{
				"<leader>E",
				function()
					require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
				end,
				desc = "Explorer NeoTree (root)",
			},
		},
	},
} 