-- vim:set ft=lua et sts=2 ts=2 sw=2 tw=78:


-- 使用packer作为原生的lua的插件管理器来管理插件

-- 定义对象来转换vim里的方法
-- local call = vim.call
-- local cmd = vim.cmd
-- local fn = vim.fn


-- see: https://github.com/wbthomason/packer.nvim#quickstart
-- If you want to automatically install and set up packer.
-- nvim on any machine you clone your configuration to, 
-- add the following snippet somewhere in your config before your first usage of packer

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- You can configure Neovim to automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- ======================================
  -- Colorscheme
  -- ======================================

  use 'morhetz/gruvbox'
  use 'tomasr/molokai'
  use 'joshdick/onedark.vim'
  use {'kaicataldo/material.vim', branch='main'}
  use "glepnir/oceanic-material"
  use 'drewtempelmeyer/palenight.vim'
  -- use 'ayu-theme/ayu-vim'

  -- ====================================== 
  -- Common and Dependences
  -- ======================================

  -- common functions
  use 'nvim-lua/plenary.nvim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- ====================================== 
  -- Fuzz search
  -- ======================================

  -- you must install fg and ripgrep manually first
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-media-files.nvim'

  -- ====================================== 
  -- Status Line
  -- ======================================

  use 'nvim-lualine/lualine.nvim'

  -- ====================================== 
  -- Start Screen
  -- ======================================

  use 'mhinz/vim-startify'

  -- ====================================== 
  -- Language support and LSP
  -- ======================================

  -- use {
  --   'nvim-treesitter/nvim-treesitter',
  --   run = ':TSUpdate'
  -- }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  }


  -- LSP base
  use {
    -- manage lsp server
    "williamboman/mason.nvim",
    -- auto config lsp
    "williamboman/mason-lspconfig.nvim",
    -- lsp basic config by nvim
    "neovim/nvim-lspconfig",
  }

  -- completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- snippets
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  -- dictionary
  use 'uga-rosa/cmp-dictionary'

  -- comment
  use "terrortylor/nvim-comment"


  -- ====================================== 
  -- File Explorer
  -- ======================================

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  -- ====================================== 
  -- Misc
  -- ======================================

  if packer_bootstrap then
    require('packer').sync()
  end
end)


-- -- 暂时没有用到

-- -- get the packer install path, stdpath of data is ~/.local/share/nvim
-- --   you can use :lua print(vim.fn.stdpath('data')) to checkout it
-- local install_path =
--   vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- -- check packer installed or not

-- if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
--   vim.cmd(
--     "!git clone https://hub.fastgit.org/wbthomason/packer.nvim " ..
--       install_path
--   )
--   vim.cmd [[packadd packer.nvim]]
-- end

-- -- Only required if you have packer configured as `opt`
-- -- vim.cmd [[packadd packer.nvim]]

-- -- auto compile plugins.lua
-- vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

-- local ok, packer = pcall(require, "packer")

-- if ok then
--   local use = packer.use
--   packer.init {
--     git = {
--       clone_timeout = 300 -- 5 minutes, I have horrible internet
--     }
--   }
--   packer.startup(
--     function()
--       -- packer
--       use "wbthomason/packer.nvim"
--       -- ===================
--       -- Language Support
--       -- ===================
--       -- LSP base
--       use "neovim/nvim-lspconfig"
--       use "glepnir/lspsaga.nvim"
--       -- use 'nvim-lua/lsp-status.nvim'
--       -- completion
--       use "nvim-lua/completion-nvim"

--       -- snippets
--       use "honza/vim-snippets"
--       use "SirVer/ultisnips"

--       -- code format
--       use "mhartington/formatter.nvim"

--       -- Treesitter
--       -- use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

--       -- ===================
--       -- Golang
--       -- ===================
--       use "fatih/vim-go"
--       -- ===================
--       -- start screen
--       -- ===================
--       use "glepnir/dashboard-nvim"

--       -- ===================
--       -- fuzzy finder
--       -- ===================
--       -- fzf
--       use {"junegunn/fzf", dir = "~/.fzf", run = "./install --all"}
--       use {"junegunn/fzf.vim"}
--       -- Telescope
--       use {
--         "nvim-telescope/telescope.nvim",
--         requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
--       }
--       use "nvim-telescope/telescope-media-files.nvim"

--       -- ===================
--       -- file explorer
--       -- ===================
--       use "kyazdani42/nvim-web-devicons"
--       use "kyazdani42/nvim-tree.lua"

--       -- ===================
--       -- git plugin
--       -- ===================
--       use "tpope/vim-fugitive"
--       -- use 'airblade/vim-gitgutter'
--       use {
--         "lewis6991/gitsigns.nvim",
--         requires = {
--           "nvim-lua/plenary.nvim"
--         }
--       }
--       use "f-person/git-blame.nvim"

--       -- ===================
--       -- tagbar
--       -- ===================
--       use "liuchengxu/vista.vim"
--       -- ===================
--       -- terminal
--       -- ===================
--       use "voldikss/vim-floaterm"

--       -- ===================
--       -- Misc
--       -- ===================
--       -- surround
--       use "tpope/vim-surround"
--       -- auto align
--       use "junegunn/vim-easy-align"
--       -- comment tools
--       use "tpope/vim-commentary"
--       -- easy motion like
--       use {
--         "phaazon/hop.nvim",
--         as = "hop",
--         config = function()
--           -- you can configure Hop the way you like here; see :h hop-config
--           require "hop".setup {keys = "etovxqpdygfblzhckisuran"}
--         end
--       }

--       -- key mapping helper
--       use "liuchengxu/vim-which-key"

--       -- zen writing
--       use "junegunn/limelight.vim"
--       use "junegunn/goyo.vim"

--       -- ===================
--       -- UI appearances
--       -- ===================
--       -- icon
--       -- use "kyazdani42/nvim-web-devicons"
--       use "ryanoasis/vim-devicons"
--       -- status line
--       use {
--         "glepnir/galaxyline.nvim",
--         branch = "main",
--         -- your statusline
--         config = function()
--           require "plugin.statusline"
--         end,
--         -- some optional icons
--         requires = {"kyazdani42/nvim-web-devicons", opt = true}
--       }
--       -- buffer line
--       use "romgrk/barbar.nvim"
--       -- colorschemes
--       use 'joshdick/onedark.vim'
--       use 'morhetz/gruvbox'
--       use {'kaicataldo/material.vim', branch='main'}
--       use "glepnir/oceanic-material"
--       use 'drewtempelmeyer/palenight.vim'
--       use 'ayu-theme/ayu-vim'
--     end
--   )
-- end
