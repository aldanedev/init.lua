return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "lua",
      "luadoc",
      "javascript",
      "json",
      "jq",
      "typescript",
      "tsx",
      "java"
    },
    highlight = {
      enable = true
    },
    indent = {
      enable = true
    },
    autotag = {
      enable = true,
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = true,
    },
  }
}
