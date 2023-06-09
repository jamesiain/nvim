return {

  { --  Easily create and manage predefined window layouts, bringing a new edge to your workflow
    "folke/edgy.nvim",
    event = "VeryLazy",
    init = function()
      -- views can only be fully collapsed with the global statusline
      vim.opt.laststatus = 3
      -- Default splitting will cause your main splits to jump when opening an edgebar.
      -- To prevent this, set `splitkeep` to either `screen` or `topline`.
      vim.opt.splitkeep = "screen"
    end,
    opts = {},
  },
}
