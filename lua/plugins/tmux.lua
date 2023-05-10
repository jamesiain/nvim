return {

  { -- Lua rewrite of Chris Toomey's Vim Tmux Navigator
    "alexghergh/nvim-tmux-navigation",
    config = function()
      require("nvim-tmux-navigation").setup({
        disable_when_zoomed = true, -- defaults to false
      })
    end,
    keys = {
      {
        "<C-h>",
        function()
          require("nvim-tmux-navigation").NvimTmuxNavigateLeft()
        end,
        mode = { "n" },
        desc = "Navigate one pane left",
      },
      {
        "<C-l>",
        function()
          require("nvim-tmux-navigation").NvimTmuxNavigateRight()
        end,
        mode = { "n" },
        desc = "Navigate one pane right",
      },
      {
        "<C-k>",
        function()
          require("nvim-tmux-navigation").NvimTmuxNavigateUp()
        end,
        mode = { "n" },
        desc = "Navigate one pane up",
      },
      {
        "<C-j>",
        function()
          require("nvim-tmux-navigation").NvimTmuxNavigateDown()
        end,
        mode = { "n" },
        desc = "Navigate one pane down",
      },
      {
        "<C-\\>",
        function()
          require("nvim-tmux-navigation").NvimTmuxNavigateLastActive()
        end,
        mode = { "n" },
        desc = "Navigate to last active pane",
      },
      {
        "<C-Space>",
        function()
          require("nvim-tmux-navigation").NvimTmuxNavigateNext()
        end,
        mode = { "n" },
        desc = "Navigate to next pane",
      },
    },
  },
}
