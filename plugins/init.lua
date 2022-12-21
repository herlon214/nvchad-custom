local overrides = require "custom.plugins.overrides"

return {
  -- Enable dashboard
  ["goolord/alpha-nvim"] = { disable = false },

  -- LSP
  ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
  },

  -- Lightspeed motion
  ["ggandor/lightspeed.nvim"] = {},

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
