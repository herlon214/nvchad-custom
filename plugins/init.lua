-- Load CoC-Nvim custom configs
require "custom.plugins.coc"

local overrides = require "custom.plugins.overrides"

return {
  -- Enable dashboard
  ["goolord/alpha-nvim"] = { disable = false },

  -- CoC NVIM
  ["neoclide/coc.nvim"] = {
    branch = "release",
  },

  -- Disable lsp and cmp
  ["neovim/nvim-lspconfig"] = false,
  ["hrsh7th/nvim-cmp"] = false,
  ["hrsh7th/cmp-nvim-lua"] = false,
  ["hrsh7th/cmp-nvim-lsp"] = false,
  ["hrsh7th/cmp-buffer"] = false,
  ["hrsh7th/cmp-path"] = false,
  ["saadparwaiz1/cmp_luasnip"] = false,
  ["L3MON4D3/LuaSnip"] = false,
  ["windwp/nvim-autopairs"] = false,

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

}
