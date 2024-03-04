return {
  --'rose-pine/neovim',
  --name = 'rose-pine',
  --opts = {
  --  variant = "moon",
  --  styles = {
  --    transparency = true,
  --  },
  --},
  --config = function(_, opts)
  --  require("rose-pine").setup(opts)
  --  vim.cmd("colorscheme rose-pine")
  --end,
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  opts = {
    background = "soft",
    transparent_background_level = 2,
    italics = true,
  },
  config = function(_, opts)
    require("everforest").setup(opts)
    vim.cmd("colorscheme everforest")
  end,
}
