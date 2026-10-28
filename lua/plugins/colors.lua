-- ~/.config/nvim/lua/plugins/color.lua

-- "kanagawa" | "tokyonight" | "catppuccin" | "gruvbox" | "onedark" | "cyberdream"
-- "everforest" | "rose-pine" | "nightfox" | "melange" | "ayu" | "oasis"

local theme = "oasis"

local configs = {
  kanagawa = { --"themes: wave, dragon, lotus"
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({ theme = "wave" })
      vim.cmd("colorscheme kanagawa")
    end,
  },
  tokyonight = { -- "themes: storm, night, moon, day "
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({ style = "storm" })
      vim.cmd("colorscheme tokyonight")
    end,
  },
  catppuccin = { --"mocha, frappe, latte, macchiato"
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({ flavour = "mocha" })
      vim.cmd("colorscheme catppuccin")
    end,
  },
  gruvbox = { --contrast(hard, soft, medium), transparent(true, false), dim_inactive(true, false)
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({ contrast = "hard" }) -- soft, medium, hard
      vim.cmd("colorscheme gruvbox")
    end,
  },
  onedark = { -- dark, darker, cool, deep, warm, warmer
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({ style = "dark" })
      vim.cmd("colorscheme onedark")
    end,
  },
  everforest = { --hard, medium, soft
    "sainnhe/everforest",
    config = function()
      vim.g.everforest_background = "medium"
      vim.cmd("colorscheme everforest")
    end,
  },
  ["rose-pine"] = { --main, moon, dawn
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({ variant = "moon" })
      vim.cmd("colorscheme rose-pine")
    end,
  },
  nightfox = { --nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({ options = { colorblind = { enable = true } } })
      vim.cmd("colorscheme nightfox")
    end,
  },
  melange = { --  dark, light
    "savq/melange-nvim",
    config = function()
      vim.cmd("colorscheme melange")
    end,
  },
  ayu = { -- mirage, dark, light
    "Shatur/neovim-ayu",
    config = function()
      require("ayu").setup({ mirage = true })
      vim.cmd("colorscheme ayu")
    end,
  },

  cyberdream = { --dark, light
      "scottmckendry/cyberdream.nvim",
      config = function()
          require("cyberdream").setup({})
          vim.cmd("colorscheme cyberdream")
        end,
  },

  oasis = { --night, desert, sol, abyss, scorpion, starlight, cactus and etc
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
