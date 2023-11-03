return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "hrsh7th/cmp-git",
    "saadparwaiz1/cmp_luasnip",
    { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
    "zbirenbaum/copilot-cmp",
  },
  event = "VeryLazy",
  main = "aldanedev.config.cmp",
  config = true
}
