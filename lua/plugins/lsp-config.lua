return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require('lspconfig')
    local lsp = vim.lsp
    local util = require("lspconfig.util")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
    })
    lspconfig.gopls.setup({
      capabilities = capabilities,
      cmd = { "gopls" },
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
      root_dir = util.root_pattern( "go.work", "go.mod", ".git" ),
    })

    vim.keymap.set('n', 'gi', lsp.buf.implementation, {})
    vim.keymap.set('n', 'gd', lsp.buf.definition, {})
    vim.keymap.set('n', 'gr', lsp.buf.references, {})
    vim.keymap.set('n', 'K', lsp.buf.hover, {})
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', lsp.buf.code_action, {})

    lsp.handlers["textDocument/hover"] = lsp.with(lsp.handlers.hover, {
      border = "rounded",
    })
    lsp.handlers["textDocument/signatureHelp"] = lsp.with(lsp.handlers.signature_help, {
      border = "rounded",
    })
  end
}
