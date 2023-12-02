local function aldanedev()
  return "aldanedev"
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    options = {
      globalstatus = true,
    },
    sections = {
      lualine_c = { { "filename", file_status = true, path = 1 } },
      lualine_x = {
        { aldanedev }
      }
    },
    inactive_winbar = {
      lualine_c = { "filename" }
    },
  },
  config = true
}
