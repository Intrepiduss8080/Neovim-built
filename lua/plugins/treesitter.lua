return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false, -- Запускаем сразу при старте Neovim
  config = function()
    -- Используем классический конфиг-модуль
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      -- Список языков, которые установятся автоматически
      ensure_installed = { "elixir", "heex", "eex", "lua", "vim", "vimdoc", "markdown" },
      
      sync_install = false,
      auto_install = true, -- Сама скачает компилятор, если чего-то не хватает
      
      highlight = { 
        enable = true, -- Включаем подсветку
      },
      indent = { 
        enable = true, -- Включаем умные автоотступы
      },
    })
  end,
}

