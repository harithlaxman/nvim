local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("vim-configs")

local opts = {
  ui = {
    border = "rounded",
    title = "LAZY PIECE OF SHIT",
  },
}

require("lazy").setup("plugins", opts)
vim.keymap.set("n", "<leader>lm", "<cmd>Lazy<CR>", {})
