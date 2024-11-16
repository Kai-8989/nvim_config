-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

--------------
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- Toggels tree
  vim.keymap.set("n","<leader>e", vim.cmd.NvimTreeToggle)

  -- custom navigation between tree and files
  vim.keymap.set("n", "<C-S-h>", vim.cmd.NvimTreeFocus)

  -- Close folder with <h>
  vim.keymap.set('n', 'h', function()
    local node = api.tree.get_node_under_cursor()
    if node and node.type == "directory" and node.open then
      api.node.navigate.parent_close()
    else
      vim.cmd("normal! h")
    end
  end, opts('Close Folder'))

  -- Open folder or file with <l>
  vim.keymap.set('n', 'l', function()
    local node = api.tree.get_node_under_cursor()
    if not node then
      return
    end

    if node.type == "directory" then
      if not node.open then
        api.node.open.edit()
      end
    elseif node.type == "file" then
      api.node.open.edit()
    end
  end, opts('Open Folder/File'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  ---
  on_attach = my_on_attach,
  ---
}

