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
