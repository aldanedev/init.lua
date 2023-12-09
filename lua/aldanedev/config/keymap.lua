vim.keymap.set("n", "<leader>w<Up>", "<C-w>k", { desc = "Window Up" })
vim.keymap.set("n", "<leader>w<Down>", "<C-w>j", { desc = "Window Down" })
vim.keymap.set("n", "<leader>w<Left>", "<C-w>h", { desc = "Window Left" })
vim.keymap.set("n", "<leader>w<Right>", "<C-w>l", { desc = "Window Right" })
vim.keymap.set({ "n", "i" }, "<C-s>", vim.cmd.w, { desc = "Save Buffer" })
vim.keymap.set("n", "<leader>c", vim.cmd.vsplit, { desc = "New Column" })
vim.keymap.set("n", "<leader>q", vim.cmd.quit, { desc = "Cerrr Buffer" })
vim.keymap.set("n", "<leader>r", vim.cmd.split, { desc = "New Row" })
vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode, { desc = "Zen Mode" })
vim.keymap.set("n", "<leader>b", vim.cmd.Oil, { desc = "Open parent directory" })
