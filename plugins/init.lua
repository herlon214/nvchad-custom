local overrides = require "custom.plugins.overrides"

return {
  -- Enable dashboard
  ["goolord/alpha-nvim"] = { disable = false },

  ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
  },

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

  ["NvChad/nvterm"] = {
    override_options = overrides.nvterm,
  },

}
