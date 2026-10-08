return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- 1. Твой ASCII-арт (он автоматически отцентрируется плагином)
    dashboard.section.header.val = {
      [[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
      [[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
      [[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
      [[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
      [[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
      [[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
    }

    -- 2. Твои кнопки с хоткеями и командами
    dashboard.section.buttons.val = {
      dashboard.button("f", "🔍  Найти файл",    "<cmd>Telescope find_files<CR>"),
      dashboard.button("n", "📄  Новый файл",    "<cmd>ene | startinsert<CR>"),
      dashboard.button("r", "🕒  Недавние",      "<cmd>Telescope oldfiles<CR>"),
      dashboard.button("g", "💬  Grep (Поиск)",  "<cmd>Telescope live_grep<CR>"),
      dashboard.button("c", "⚙️   Конфиг",        "<cmd>e $MYVIMRC<CR>"),
      dashboard.button("q", "❌  Выход",         "<cmd>qa<CR>"),
    }

    -- 3. Настройка цветов (под Токио Найт / стандартные группы)
    vim.api.nvim_set_hl(0, 'AlphaHeader', { fg = '#7aa2f7' })
    vim.api.nvim_set_hl(0, 'AlphaButtons', { fg = '#c0caf5' })

    -- Отключаем лишний мусор на экране дашборда
    dashboard.opts.opts.noautocmd = true
    
    alpha.setup(dashboard.config)
  end
}

