return {
	{
		"williamboman/mason.nvim",
		opts = {
			ui = {
				border = "rounded",
				size = {
					height = 0.7,
				},
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			ensure_installed = {
				"stylua", "lua-language-server",
				"clang-format", "clangd",
				"golines", "gopls",
				"gofumpt",
				"goimports",
			},
		},
		config = function(_, opts)
			require("mason").setup(opts)

			local mr = require("mason-registry")

			local function ensure_installed()
				for _, tool in ipairs(opts.ensure_installed) do
					local p = mr.get_package(tool)
					if not p:is_installed() then
						p:install()
					end
				end
			end

			if mr.refresh then
				mr.refresh(ensure_installed)
			else
				ensure_installed()
			end
			vim.keymap.set("n", "<leader>mm", "<cmd>Mason<CR>", {})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
}
