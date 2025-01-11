return {
	-- C/C++ 支持
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				clangd = {
					cmd = { "clangd", "--background-index", "--clang-tidy" },
					filetypes = { "c", "cpp", "objc", "objcpp" },
					init_options = {
						compilationDatabasePath = "./", -- compile_commands.json 所在目录
					},
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
				"cpp",
				"python",
				"asm",
				"make",
				"cmake",
				"markdown",
			},
		},
	},
}
