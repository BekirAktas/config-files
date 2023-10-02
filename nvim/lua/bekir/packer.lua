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

use { "catppuccin/nvim", as = "catppuccin" }

use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}
 use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
 use('nvim-treesitter/playground')
 use('theprimeagen/harpoon')
 use('mbbill/undotree')
 use('tpope/vim-fugitive')
 use {
	 'nvim-tree/nvim-tree.lua',
	 requires = {
		 'nvim-tree/nvim-web-devicons',
	 },
	 config = function()
		 require("nvim-tree").setup({
			git = {
				ignore = false,
			  }
		 })
	 end
 }
 use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

 use "sindrets/diffview.nvim" 
 use("folke/zen-mode.nvim")
 use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
end)
