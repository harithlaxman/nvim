return {
	-- GitSigns
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				current_line_blame = true,
				preview_config = {
					border = "rounded",
				},
			})
		end,
	},
	{
		"tpope/vim-fugitive",
	},
}
