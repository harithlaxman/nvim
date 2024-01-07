return { 
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Treesitter Configs
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "lua", "vim", "go", "cpp", "python" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
