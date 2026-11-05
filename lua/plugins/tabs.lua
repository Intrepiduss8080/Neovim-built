return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        separator_style = "thin",
        show_buffer_close_icons = true,
        show_close_icon = false,
        indicator = { style = "underline" },
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
          },
        },
      },
      highlights = {
        fill = { bg = '#1e1e2e' },
        background = { fg = '#a6adc8', bg = '#1e1e2e' },
        buffer_selected = { fg = '#cdd6f4', bg = '#313244', bold = true, italic = false },
        separator = { fg = '#1e1e2e', bg = '#1e1e2e' },
        separator_selected = { fg = '#1e1e2e', bg = '#313244' },
      },
    })
    vim.keymap.set('n', '<Tab>', '<Cmd>bn<CR>')
    vim.keymap.set("n", "<C-q>", "<Cmd>bdelete<CR>", { desc = "Закрыть буфер" })
  end,
}

--tabs in neovim
