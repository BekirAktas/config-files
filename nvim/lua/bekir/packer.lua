-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

use 'terryma/vim-multiple-cursors'

use 'RRethy/vim-illuminate'

use {
  'smoka7/hop.nvim',
  tag = '*',
  config = function()
    -- see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
}

use({
  "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim"
    }
})

use({
	'mvllow/modes.nvim',
	tag = 'v0.2.0',
	config = function()
		require('modes').setup()
	end
})

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

use 'tpope/vim-commentary'
use {
  "tpope/vim-dadbod"
  -- config = require ("config/vim-dadbod")
}
use { 'vim-airline/vim-airline' }
use {
  "kristijanhusak/vim-dadbod-ui"
  -- config = require ("config/vim-dadbod-ui")
}

use {
  'smoka7/hop.nvim',
  tag = '*', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
}

use {
  "kristijanhusak/vim-dadbod-completion"
}
use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})

use {
  "windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
}


use {
  'VonHeikemen/fine-cmdline.nvim',
  requires = {
    {'MunifTanjim/nui.nvim'}
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
 }
 use "lukas-reineke/indent-blankline.nvim"
 use "sindrets/diffview.nvim"
 use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
end)
