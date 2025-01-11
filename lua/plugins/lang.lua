return {
	-- C/C++ 支持
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				clangd = {
					cmd = { "clangd", "--background-index", "--clang-tidy" },
					filetypes = { "c", "cpp", "objc", "objcpp" },
				},
			},
		},
	},
	
	-- Python 支持
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				pyright = {
					settings = {
						python = {
							analysis = {
								typeCheckingMode = "basic",
								autoSearchPaths = true,
								useLibraryCodeForTypes = true,
							},
						},
					},
				},
			},
		},
	},
	
	-- 汇编支持
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"c",
				"python",
				"asm",
				"make",
				"cmake",
				"markdown",
			},
		},
	},
}
