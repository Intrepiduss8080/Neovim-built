return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        build = ":TSUpdate",
      },
      "nvim-tree/nvim-web-devicons",
    },
    ft = { "markdown" },
    opts = {
      anti_conceal = { enabled = false },
    },
  },
}

--for working with Markdown fonts(github, gitlab in files.md)
