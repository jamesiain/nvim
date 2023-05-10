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

  -- { -- Ultra Fold Operations (modern, high-performance code folding)
  --   "kevinhwang91/nvim-ufo",
  --   dependencies = { "kevinhwang91/promise-async", "neovim/nvim-lspconfig" },
  --   event = "VimEnter",
  --   --stylua: ignore
  --   keys = {
  --     { "zR", function() require("ufo").openAllFolds() end, desc = "Open All Folds", },
  --     { "zM", function() require("ufo").closeAllFolds() end, desc = "Close All Folds", },
  --   },
  --   opts = {},
  --   config = function(_, opts)
  --     require("ufo").setup(opts)
  --   end,
  -- },

  { -- Framework for easy foldtext customization
    "anuvyklack/pretty-fold.nvim",
    opts = {
      keep_indentation = true,
      fill_char = "•",
      sections = {
        left = {
          "content",
        },
        right = {
          " ",
          "number_of_folded_lines",
          ": ",
          "percentage",
          " ••",
        },
      },
    },
    config = function(_, opts)
      require("pretty-fold").setup(opts)

      vim.opt.foldlevel = 20
      vim.opt.foldmethod = "expr"
      vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    end,
  },
}
