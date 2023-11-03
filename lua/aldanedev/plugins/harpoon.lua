return {
	'ThePrimeagen/harpoon',
  config = function ()
    local mark = require("harpoon.mark")
    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon Add Mark"})
  end
}
