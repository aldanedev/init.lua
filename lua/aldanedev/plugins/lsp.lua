return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim"
  },
  config = function()
    vim.keymap.set('n', '<leader>ed', vim.diagnostic.open_float, { desc = "Diagnostic Detail" })
    vim.keymap.set('n', '<leader>el', vim.diagnostic.setloclist, { desc = "Diagnostic List" })

    local on_attach = function(_, bufnr)
      vim.keymap.set('n', '<leader>s', vim.lsp.buf.hover, { buffer = bufnr, desc = "Documentation" })
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go Declaration" })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = "Go Definition" })
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = bufnr, desc = "Go Implementation" })
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = bufnr, desc = "Go References" })
      vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code Actions" })
      vim.keymap.set('n', 'gR', vim.lsp.buf.rename, { buffer = bufnr, desc = "Code Actions" })
    end


    require('neodev').setup({})
    require('lspconfig').lua_ls.setup({
      on_attach = on_attach,
    })
    require('lspconfig').golangci_lint_ls.setup({
      on_attach = on_attach,
    })
    require('lspconfig').gopls.setup({
      on_attach = on_attach,
    })
    require('lspconfig').tsserver.setup({
      on_attach = on_attach,
    })
    require('lspconfig').tailwindcss.setup({
      on_attach = on_attach,
    })
  end
}
