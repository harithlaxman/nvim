return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "VeryLazy",
    config = function()
        require("ibl").setup({
            exclude = {
                filetypes = { "dashboard" }
            }
        })
    end
}
