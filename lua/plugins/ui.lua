return {

  { -- indent guides for Neovim
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      char = "",
      space_char_highlight_list = {
        "Whitespace",
        "CursorColumn",
      },
      filetype_exclude = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
      show_trailing_blankline_indent = false,
      show_current_context = false,
    },
  },
  -- { -- disable temporarily to read long messages more easily ie. ":highlight"
  --   "folke/noice.nvim",
  --   opts = {
  --     messages = {
  --       enabled = false,
  --     },
  --   },
  -- },
}
