return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				theme = "doom",
        config = {
          header = {
            [[___\      /__\  _     /__\      /__]],
              [[.. \    |  ::     /_____/      |      : ..]],
              [[:  |____|_____ \__ __ _____\______::__|  :]],
              [[:  ____  /      /_(__)__ _\       /___:: :]],
              [[:  \   \/   :: .        |            /rc!:]],
                [[:.::\_________/|________::__\___/_____\..:]],
          }
        },
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
}
