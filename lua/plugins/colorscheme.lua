return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function(_)
    require("rose-pine").setup({})
    vim.cmd.colorscheme("rose-pine")
  end,
  --"neanias/everforest-nvim",
  --version = false,
  --lazy = false,
  --priority = 1000,
  --opts = {
  --  background = "soft",
  --  transparent_background_level = 2,
  --  italics = true,
  --},
  --config = function(_, opts)
  --  require("everforest").setup(opts)
  --  vim.cmd("colorscheme everforest")
  --end,
  --"gbprod/nord.nvim",
  --lazy = false,
  --priority = 1000,
  --opts = {
  --transparent = true,
  --terminal_colors = true,
  --borders = true,
  --diff = { mode = "bg" },
  --errors = { mode = "bg" },
  --search = { theme = "vim" },
  --styles = {
  --comments = { italic = true }
  --},
  --},
  --config = function(_, opts)
  --require("nord").setup({})
  --vim.cmd.colorscheme("nord")
  --end,
  --"catppuccin/nvim",
  --name = "catppuccin",
  --priority = 1000,
  --opts = {
  --flavour = "auto",
  --transparent_background = false,
  --},
  --config = function(_, opts)
  --require("catppuccin").setup(opts)
  --vim.cmd.colorscheme("catppuccin")
  --end
}
