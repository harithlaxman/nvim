return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "lua", "vim", "go", "cpp", "python" },

    highlight = {
      enable = true,
      use_languagetree = true,
    },

    indent = { enable = true },

  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end
}
