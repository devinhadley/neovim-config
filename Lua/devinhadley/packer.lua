vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({ "rose-pine/neovim", as = "rose-pine", config= function() vim.cmd("colorscheme rose-pine") end})


  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use "nvim-lua/plenary.nvim"

  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  use 'mbbill/undotree'

  use 'tpope/vim-fugitive'

  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use "github/copilot.vim"

  use 'echasnovski/mini.animate'

  use 'vim-airline/vim-airline'

  use 'vim-airline/vim-airline-themes'

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

  use 'easymotion/vim-easymotion'

end)
