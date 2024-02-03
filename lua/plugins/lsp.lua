return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      print("hello")
      local lspconfig = require("lspconfig")
      lspconfig.gopls.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.pyright.setup({})

      vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next)
      vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev)

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
          local opts = { buffer = ev.buf }
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set("n", "<leader>lf", function()
            vim.lsp.buf.format { async = true }
          end, opts
          )
        end,
      })
      -- Rounded Borders for diagnostics, hover and signaturehelp floating windows.
      vim.diagnostic.config({
        float = {
          border = "rounded",
        }
      })
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
        vim.lsp.handlers.hover, {
          border = "rounded",
        }
      )
      vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
        vim.lsp.handlers.signature_help, {
          border = "rounded",
        }
      )
    end,
  },
}
