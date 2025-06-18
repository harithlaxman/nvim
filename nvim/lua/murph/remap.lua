vim.keymap.set("n", "<leader>vs", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>hs", "<cmd>split<CR>")

local compiler = "g++"

if vim.fn.has("mac") then
    compiler = "clang++"
end

vim.keymap.set("n", "<C-b>", function()
    local file = vim.fn.expand("%")
    vim.cmd("! " .. compiler .. " -std=c++17 -O2 -Wall '" .. file .. "' -o ex && ./ex")
end)
