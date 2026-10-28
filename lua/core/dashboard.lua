return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

  
    dashboard.section.header.val = {
      [[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
      [[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
      [[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
      [[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
      [[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
      [[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
    }

        dashboard.section.buttons.val = {
      dashboard.button("f", "🔍  Найти файл",    "<cmd>Telescope find_files<CR>"),
      dashboard.button("n", "📄  Новый файл",    "<cmd>ene | startinsert<CR>"),
      dashboard.button("r", "🕒  Недавние",      "<cmd>Telescope oldfiles<CR>"),
      dashboard.button("g", "💬  Grep (Поиск)",  "<cmd>Telescope live_grep<CR>"),
      dashboard.button("c", "⚙️   Конфиг",        "<cmd>e $MYVIMRC<CR>"),
      dashboard.button("q", "❌  Выход",         "<cmd>qa<CR>"),
    }

        vim.api.nvim_set_hl(0, 'AlphaHeader', { fg = '#7aa2f7' })
    vim.api.nvim_set_hl(0, 'AlphaButtons', { fg = '#c0caf5' })

        dashboard.opts.opts.noautocmd = true
    
    alpha.setup(dashboard.config)
  end
}

