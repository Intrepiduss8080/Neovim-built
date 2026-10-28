-- ~/.config/nvim/lua/plugins/color.lua

-- "kanagawa" | "tokyonight" | "catppuccin" | "gruvbox" | "onedark" | "cyberdream"
-- "everforest" | "rose-pine" | "nightfox" | "melange" | "ayu"
local theme = "oasis"

local configs = {
  kanagawa = {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({ theme = "wave" })
      vim.cmd("colorscheme kanagawa")
    end,
  },
  tokyonight = {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({ style = "storm" })
      vim.cmd("colorscheme tokyonight")
    end,
  },
  catppuccin = {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({ flavour = "mocha" })
      vim.cmd("colorscheme catppuccin")
    end,
  },
  gruvbox = {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({ contrast = "hard" })
      vim.cmd("colorscheme gruvbox")
    end,
  },
  onedark = {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({ style = "dark" })
      vim.cmd("colorscheme onedark")
    end,
  },
  everforest = {
    "sainnhe/everforest",
    config = function()
      vim.g.everforest_background = "medium"
      vim.cmd("colorscheme everforest")
    end,
  },
  ["rose-pine"] = {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({ variant = "moon" })
      vim.cmd("colorscheme rose-pine")
    end,
  },
  nightfox = {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({ options = { colorblind = { enable = true } } })
      vim.cmd("colorscheme nightfox")
    end,
  },
  melange = {
    "savq/melange-nvim",
    config = function()
      vim.cmd("colorscheme melange")
    end,
  },
  ayu = {
    "Shatur/neovim-ayu",
    config = function()
      require("ayu").setup({ mirage = true })
      vim.cmd("colorscheme ayu")
    end,
  },

  cyberdream = {
      "scottmckendry/cyberdream.nvim",
      config = function()
          require("cyberdream").setup({})
          vim.cmd("colorscheme cyberdream")
        end,
  },

  oasis = {
        "uhs-robert/oasis.nvim",
        config = function()
            require("oasis").setup()
            vim.cmd("colorscheme oasis-desert")
        end,
    },
}

local c = configs[theme]

return {
  {
    c[1],
    name = c.name,
    lazy = false,
    priority = 1000,
    config = c.config,
  },
}
