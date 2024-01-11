return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require('lspconfig')
    local lsp = vim.lsp

    lspconfig.lua_ls.setup({})
    lspconfig.gopls.setup({
      cmd = { "gopls" },
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
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
