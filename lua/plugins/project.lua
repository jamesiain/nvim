return {

  { -- zoxide directory jumping from within neovim
    "nanotee/zoxide.vim",
  },

  { -- project management with session support
    "aaditeynair/conduct.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    cmd = {
      "ConductNewProject",
      "ConductLoadProject",
      "ConductLoadLastProject",
      "ConductLoadProjectConfig",
      "ConductReloadProjectConfig",
      "ConductDeleteProject",
      "ConductRenameProject",
      "ConductProjectNewSession",
      "ConductProjectLoadSession",
      "ConductProjectDeleteSession",
      "ConductProjectRenameSession",
    },
    config = function()
      require("telescope").load_extension("conduct")
    end,
  },
}
