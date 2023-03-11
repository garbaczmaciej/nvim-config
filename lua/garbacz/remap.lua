vim.g.mapleader = " "
vim.keymap.set("n", "<leader>b", vim.cmd.Ex)
vim.keymap.set("n", "<leader>l", "gt")
vim.keymap.set("n", "<leader>h", "gT")
vim.keymap.set("n", "<leader>n", ":tabnew<CR>:Ex!<CR>")
vim.keymap.set("n", "<leader>tc", ":terminal<CR>i")
vim.keymap.set("n", "<leader>tv", "<C-w>v<C-w>l:terminal<CR>i")
vim.keymap.set("n", "<leader>ts", "<C-w>s<C-w>j:terminal<CR>i")

vim.keymap.set("v", "d", "\"_d")
vim.keymap.set("v", "D", "\"_D")

vim.keymap.set("v", "p", "\"+P")
vim.keymap.set("v", "P", "\"+p")

vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("v", "x", "\"+x")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<lt>", "<lt>gv")

vim.keymap.set("n", "d", "\"_d")
vim.keymap.set("n", "D", "\"_D")
vim.keymap.set("n", "dd", "\"_dd")

vim.keymap.set("n", "p", "\"+p")
vim.keymap.set("n", "P", "\"+P")

vim.keymap.set("n", "o", "o<Esc>")
vim.keymap.set("n", "O", "O<Esc>")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
