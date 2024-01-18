return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local lsp = vim.lsp
    local util = require("lspconfig.util")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Luals for LUA
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
    })

    -- Gopls - for GO
    lspconfig.gopls.setup({
      capabilities = capabilities,
      cmd = { "gopls" },
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
      root_dir = util.root_pattern("go.work", "go.mod", ".git"),
      settings = {
        gopls = {
          usePlaceholders = true,
          completeUnimported = true,
          analyses = {
            unusedparams = true,
          },
        },
      },
      single_file_support = true,
    })

    -- Clangd for C, CPP
    lspconfig.clangd.setup({
      capabilities = capabilities,
      cmd = { "clangd" },
      filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
      root_dir = util.root_pattern(
        ".clangd",
        ".clang-tidy",
        ".clang-format",
        "compile_commands.json",
        "compile_flags.txt",
        "configure.ac",
        ".git"
      ),
      single_file_support = true,
    })

    vim.keymap.set("n", "K", lsp.buf.hover, {})
    vim.keymap.set({ "n", "v" }, "<leader>ca", lsp.buf.code_action, {})

    lsp.handlers["textDocument/hover"] = lsp.with(lsp.handlers.hover, {
      border = "rounded",
    })
    lsp.handlers["textDocument/signatureHelp"] = lsp.with(lsp.handlers.signature_help, {
      border = "rounded",
    })
  end,
}
