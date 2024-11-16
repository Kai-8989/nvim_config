--l This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

-- colorshceme
  use { "catppuccin/nvim", as = "catppuccin" }
 
-- nvimtree
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional
	  },
  }

-- treesitter
   use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
   -- treesitter-playground
   use {'nvim-treesitter/playground'}

-- harpoon 
   use {'nvim-lua/plenary.nvim'}
   use {'ThePrimeagen/harpoon'}

-- undo tree
   use {'mbbill/undotree'}

end)	