return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = {
				"pyright",
				"rust_analyzer",
				"clangd",
				"gopls",
				"jsonls",
				"zls",
				"tinymist",
				"ts_ls",
				"lua_ls",
			},
			automatic_installation = true,
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = {
				"stylua",
				"ruff",
				"shfmt",
				"prettier",
				"clang-format",
			},
			auto_update = true,
			run_on_start = true,
		},
	},
}
