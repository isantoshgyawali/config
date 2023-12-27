-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
}

-- Packer
use "olimorris/onedarkpro.nvim"

-- somewhere in your config:
vim.cmd("colorscheme onedark_dark")

use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

end)