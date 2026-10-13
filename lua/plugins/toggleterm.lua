return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 12,
        open_mapping = [[<C-`>]],  
        direction = "horizontal",
        shade_terminals = true,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        close_on_exit = true,
        float_opts = {
          border = "curved",
          row = 10,
          weight = 100,
          height = 6,
        },
      })

      function _G.set_terminal_keymaps()
        local opts = { buffer = 0 }
        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
        vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
      end

      vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
    end,
  },
}
