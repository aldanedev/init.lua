return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim"
  },
  config = function()
    require('neodev').setup({})
    require('lspconfig').lua_ls.setup({})
    require('lspconfig').golangci_lint_ls.setup({})
    require('lspconfig').gopls.setup({})
    require('lspconfig').tsserver.setup({})
    require('lspconfig').java.setup({})
  end
}
