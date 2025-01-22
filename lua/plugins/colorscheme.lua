return {
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    opts = {
        flavour = "frappe",
        transparent_background = true
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin")
    end
}
