return {
  -- Color Scheme 
  {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require("rose-pine").setup({
      variant = "auto",
      disable_background = true,
      --disable_float_background = true,
      highlight_groups = {
        NormalFloat = { bg = "none" },
        FloatBorder = { fg = "rose", bg = "none" },

        -- Transparent Telescope
        TelescopeBorder = { fg = "highlight_high", bg = "none" },
        TelescopeNormal = { bg = "none" },
        TelescopePromptNormal = { bg = "none" },
        TelescopeResultsNormal = { fg = "subtle", bg = "none" },
        TelescopeSelection = { fg = "text", bg = "none" },
        TelescopeSelectionCaret = { fg = "rose", bg = "none" },
      }
    })
    vim.cmd("colorscheme rose-pine")
  end
  },
}
