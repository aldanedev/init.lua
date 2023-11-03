return {
  "stevearc/conform.nvim",
  opts = {
    formating_by_ft = {
      lua = { "stylua" },
      go = { "gofmt", "goimports" },
      javascript = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true
    }
  },
  config = true
}
