-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

 use 'marko-cerovac/material.nvim'

 use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
 use('nvim-treesitter/playground')
 use('theprimeagen/harpoon')
 use('mbbill/undotree')
 use('tpope/vim-fugitive')
 use {
	 'nvim-tree/nvim-tree.lua',
	 requires = {
		 'nvim-tree/nvim-web-devicons', -- optional
	 },
	 config = function()
		 require("nvim-tree").setup {}
	 end
 }

 use "sindrets/diffview.nvim" 
 use("folke/zen-mode.nvim")
 use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
end)
