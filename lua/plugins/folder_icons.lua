vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  callback = function()
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#ADFF2F" })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#ADFF2F" })
    end,
})

return {}

--icons for folders(separated)
