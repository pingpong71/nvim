local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'akinsho/bufferline.nvim',
  'theprimeagen/harpoon',
  'windwp/nvim-autopairs',
  'chentoast/marks.nvim',
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'debugloop/telescope-undo.nvim',
    }
  },

  -- rust
  'mfussenegger/nvim-dap',
  'rcarriga/nvim-dap-ui',
  'simrat39/rust-tools.nvim',

  -- lsp
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  {
    'L3MON4D3/LuaSnip',
    dependencies = { "rafamadriz/friendly-snippets" },
  },
  'saadparwaiz1/cmp_luasnip',


  -- color schemes
  'rktjmp/lush.nvim',
  'dracula/vim',
  'romainl/Apprentice',
  'lilydjwg/colorizer',
  'catppuccin/nvim',
  'rebelot/kanagawa.nvim',
  'Shatur/neovim-ayu',
  'NTBBloodbath/doom-one.nvim',
  'neanias/everforest-nvim',
  'zoomlogo/darc.nvim',
  'RaphaeleL/my_vivid',
  'rafamadriz/onepro',
}

local opts = {}

require("lazy").setup(plugins, opts)

