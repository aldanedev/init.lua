return {
  "nvim-telescope/telescope.nvim",
  event = 'VeryLazy',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  opts = {
    fzf = {
      fyzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case"
    }
  },
  config = function(opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("harpoon")
  end,
  keys = {
    {
      "<leader>p",
      function()
        require("telescope.builtin").git_files({ show_untracked = true })
      end,
      desc = "Telescope Git Files"
    },
    {
      "<leader>gs",
      function()
        require("telescope.builtin").git_status()
      end,
      desc = "Telescope Git Status"
    },
    {
      "<leader>gb",
      function()
        require("telescope.builtin").git_branches()
      end,
      desc = "Telescope Git Branches"
    },
    {
      "<leader>b",
      function()
        require("telescope").extensions.file_browser.file_browser({ path = "%:h:p", select_buffer = true })
      end,
      desc = "Telescope File Browser"
    },
    {
      "<leader>d",
      function()
        require("telescope").extensions.harpoon.marks()
      end,
      desc = "Harpoon Files"
    },
    {
      "<leader>gd",
      function()
        require("telescope.builtin").git_bcommits()
      end,
      desc = "Telescope Git Status Commit"
    },
    {
      "<leader>gg",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Telescope Grep Files"
    }
  }

}
