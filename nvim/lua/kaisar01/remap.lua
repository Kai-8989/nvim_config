vim.g.mapleader = " "

-- Remapping the Ex command (open Netrw)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Explanation of the remap:
-- This remaps the key combination "<leader>pv" in normal mode ("n").
-- "<leader>" is set as " " (space), so the key combination becomes "space + pv".
-- NvimTree
vim.keymap.set("n","<C-H>", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<H>", vim.cmd.NvimTreeCollapse)
-- "vim.cmd.Ex" executes the :Ex command, which opens the file explorer.
