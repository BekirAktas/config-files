-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

use { "catppuccin/nvim", as = "catppuccin" }

use 'karb94/neoscroll.nvim'
use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             
        {'williamboman/mason.nvim'},           
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'hrsh7th/cmp-nvim-lsp'}, 
        {'L3MON4D3/LuaSnip'},    
    }
}

use {
  "windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
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
 }
 use "lukas-reineke/indent-blankline.nvim"
 use "sindrets/diffview.nvim" 
 use("folke/zen-mode.nvim")
 use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
end)
