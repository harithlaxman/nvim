vim.keymap.set("n", "<leader>vs", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>hs", "<cmd>split<CR>")

vim.keymap.set("n", "<C-b>", "<cmd>!g++ -std=c++17 -O2 -Wall % -o ex && ./ex<CR>")
