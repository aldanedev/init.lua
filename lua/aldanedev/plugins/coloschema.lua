return {
  "wuelnerdotexe/vim-enfocado",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.enfocado_style = 'neon'
    vim.o.termguicolors = true
    vim.o.t_Co = 256
    vim.cmd([[colorscheme enfocado]])
  end
}
