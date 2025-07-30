require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map({"n", "v", "x", "i", "s"}, "<C-e>", "<cmd>qa!<cr>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
