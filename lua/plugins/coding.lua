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
}
