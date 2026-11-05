return {
  "3rd/image.nvim",
  lazy = false,
  opts = {
    backend = "kitty",
    processor = "magick_cli",
    max_width = 1000,
    max_height = 1000,
    
    max_width_window_percentage = 100,
    max_height_window_percentage =  100,

    kitty_method = "normal",

    integrations = {
      markdown = { enabled = true },
      html = { enabled = true },
    },
  },
}
