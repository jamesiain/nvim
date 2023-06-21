return {

  { -- gaze deeply into unknown regions using the power of the moon
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { -- operate fzf from within a telescope popup in neovim
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
      { -- operate zoxide from within a telescope popup in neovim
        "jvgrootveld/telescope-zoxide",
        config = function()
          require("telescope").load_extension("zoxide")
        end,
        keys = {
          {
            "<leader>z",
            function()
              require("telescope").extensions.zoxide.list()
            end,
            desc = "Switch Directory (cwd) using Zoxide",
          },
        },
      },
      { -- visualize and fuzzy-search changes in the undo tree
        "debugloop/telescope-undo.nvim",
        config = function()
          require("telescope").load_extension("undo")
        end,
        keys = {
          {
            "<leader>su",
            function()
              require("telescope").extensions.undo.undo()
            end,
            desc = "Search Undo History",
          },
        },
      },
    },
    keys = {
      { "<leader>uC", false }, -- disable the built-in colorscheme picker
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Find Plugin File",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
