return {
  "tpope/vim-fugitive",
  cmd = { "G", "Git" },
  keys = {
    {
      "<leader>gt", vim.cmd.G, desc = "Git Tools"
    }
  }
}
