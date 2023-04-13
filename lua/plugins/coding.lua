return {

  { -- toggle comments ON/OFF on visual regions/lines
    "numToStr/Comment.nvim",
    config = true,
  },

  { -- the premier plugin for git
    "tpope/vim-fugitive",
    dependencies = {
      "tpope/vim-rhubarb", -- support github actions
      "rhysd/git-messenger.vim", -- explore git log messages
      "gisphm/vim-gitignore", -- .gitignore syntax highlighting and snippets
    },
  },

  { -- Ultra Fold Operations (modern, high-performance code folding)
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async", "neovim/nvim-lspconfig" },
    --stylua: ignore
    keys = {
      { "zR", function() require("ufo").openAllFolds() end, desc = "Open All Folds", },
      { "zM", function() require("ufo").closeAllFolds() end, desc = "Close All Folds", },
    },
    opts = {},
    config = function(_, opts)
      require("ufo").setup(opts)
    end,
  },
}
