return {
  "stevearc/conform.nvim",
  opts = {
    formating_by_ft = {
      lua = { "stylua" },
      go = { "gofmt", "goimports" }
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true
    }
  },
  config = true
}
