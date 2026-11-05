vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  callback = function()
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#f5c345" })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#f5c345" })
    end,
})

return {}

--icons for folders(separated)
