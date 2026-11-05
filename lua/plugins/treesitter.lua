return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false, 
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "elixir", "heex", "eex", "lua", "vim", "vimdoc", "markdown" },
      
      sync_install = false,
      auto_install = true, --т
      
      highlight = { 
        enable = true, 
      },
      indent = { 
        enable = true, 
      },
    })
  end,
}

