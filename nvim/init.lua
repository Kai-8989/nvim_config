require("kaisar01")



-- Move focus to the right window with <C-l>
vim.keymap.set('n', '<C-l>', function()
  vim.cmd('wincmd l')
end, { desc = "Move to Right Window" })

-- Move focus to the left window with <C-h>
vim.keymap.set('n', '<C-h>', function()
  vim.cmd('wincmd h')
end, { desc = "Move to Left Window" })

-- Move focus to the window below with <C-j>
vim.keymap.set('n', '<C-j>', function()
  vim.cmd('wincmd j')
end, { desc = "Move to Window Below" })

-- Move focus to the window above with <C-k>
vim.keymap.set('n', '<C-k>', function()
  vim.cmd('wincmd k')
end, { desc = "Move to Window Above" })
