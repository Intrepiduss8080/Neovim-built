return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      {
        "nvim-tree/nvim-web-devicons",
        config = function()
          local devicons = require("nvim-web-devicons")
          devicons.setup({ default = true })

          devicons.set_icon({
            c = { icon = "", color = "#599eff", name = "C" }, 
            ex  = { icon = "", color = "#a074c4", name = "Ex" },
            exs = { icon = "", color = "#a074c4", name = "Exs" },
            cpp = {icon = "", name = "cpp"},

            lua = {icon = "", name = "lua"},

            php = {icon = "󰌟", name = "php"},

            go = {icon = "󰟓", name = "go"},

            lisp = {icon = "", lisp},

            clojure = {icon = "", name = "clj"},
          
            nix = {icon = "󱄅", name = "nix"},

            py = {icon = "", name = "py"},

            java = {icon = "", name = "java"},

            rust = {icon = "", name = "rs"},

            cs = {icon = "", name = "cs"},

            css = {icon = "", name = "css"}
        })
        end,
      },
    },
    config = function()
         
 

      require("neo-tree").setup({
        window = { 
          width = 25, 
        },
        default_component_options = {
          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "  ",
            default = "  ", 
            highlight = "NeoTreeFileIcon"

            
          },
          git_status = {
            symbols = {
              added     = "✚",
              modified  = "",
              deleted   = "✖",
              untracked = "",
              ignored   = "",
              unstaged  = "  ",
              staged    = "",
              conflict  = "",
            }
          }
        }
      })

      vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Дерево" })
    end,
  },
}



