return {

  {
    "folke/zen-mode.nvim",
    keys = {
      {
        "<leader>uz",
        function()
          require("zen-mode").toggle()
        end,
        mode = { "n" },
        desc = "Toggle Zen-mode",
      },
    },
    opts = {},
  },
  { -- open "filename:248,13" at line 248 and column 13
    "wsdjeg/vim-fetch",
  },
  { -- use w e b motions like a spider (enhanced CamelCase & punctuation traversal)
    "chrisgrieser/nvim-spider",
    keys = {
      {
        "w",
        function()
          require("spider").motion("w")
        end,
        mode = { "n", "o", "x" },
        desc = "Next beginning-of-word (Spider)",
      },
      {
        "e",
        function()
          require("spider").motion("e")
        end,
        mode = { "n", "o", "x" },
        desc = "Next end-of-word (Spider)",
      },
      {
        "b",
        function()
          require("spider").motion("b")
        end,
        mode = { "n", "o", "x" },
        desc = "Previous beginning-of-word (Spider)",
      },
      {
        "ge",
        function()
          require("spider").motion("ge")
        end,
        mode = { "n", "o", "x" },
        desc = "Previous end-of-word (Spider)",
      },
    },
    lazy = true,
    opts = {
      skipInsignificantPunctuation = false,
    },
  },
}
