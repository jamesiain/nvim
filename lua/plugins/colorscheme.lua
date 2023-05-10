return {

  { -- toggle background transparency
    "xiyaowong/nvim-transparent",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      {
        "<leader>ut",
        "<cmd>TransparentToggle<CR>",
        mode = { "n" },
        desc = "Toggle Transparent Background",
      },
    },
  },

  { -- persistent colorscheme picker
    "jamesiain/colorscheme-persist.nvim",
    event = { "BufReadPre", "BufNewFile" },
    priority = 1000,
    dependencies = {
      "nvim-telescope/telescope-dap.nvim",
      "xiyaowong/nvim-transparent",

      -- available colorschemes
      "AlessandroYorba/Alduin",
      "JoosepAlviste/palenightfall.nvim",
      "ayu-theme/ayu-vim",
      { "catppuccin/nvim", name = "catppuccin" },
      "ellisonleao/gruvbox.nvim",
      "felipeagc/fleet-theme-nvim",
      "kdheepak/monochrome.nvim",
      "loctvl842/monokai-pro.nvim",
      "nyngwang/nvimgelion",
      "olivercederborg/poimandres.nvim",
      "ray-x/aurora",
      "rebelot/kanagawa.nvim",
      { "rose-pine/neovim", name = "rose-pine" },
      "sainnhe/sonokai",
      "shaunsingh/oxocarbon.nvim",
      "tokyonight.nvim",
      "zanglg/nova.nvim",
    },
    keys = {
      {
        "<leader>up",
        function()
          require("colorscheme-persist").picker()
        end,
        mode = { "n" },
        desc = "Pick Colorscheme (persistent)",
      },
    },
    opts = function()
      local os_sep = require("plenary.path").path.sep
      return {
        file_path = vim.fn.stdpath("state") .. os_sep .. "colorscheme-persist.lua",
        fallback = "habamax", -- least offensive built-in colorscheme
        disable = { -- do not include built-in colorschemes in picker
          "blue",
          "darkblue",
          "default",
          "delek",
          "desert",
          "elflord",
          "evening",
          "industry",
          "koehler",
          "lunaperche",
          "morning",
          "murphy",
          "pablo",
          "peachpuff",
          "quiet",
          "ron",
          "shine",
          "slate",
          "torte",
          "zellner",
        },
        enable_preview = true,
      }
    end,
  },

  { -- restore the persisted colorscheme at startup
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local colorscheme = require("colorscheme-persist").get_colorscheme()
        vim.cmd("colorscheme " .. colorscheme)
      end,
    },
  },
}
