return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {
      surrounds = {
        -- Markdown
        ["B"] = { add = { "**", "**" } },        -- жирный
        ["I"] = { add = { "*", "*" } },          -- курсив
        ["C"] = { add = { "`", "`" } },          -- код
        ["S"] = { add = { "~~", "~~" } },        -- зачёркнутый

        -- LaTeX
        ["t"] = { add = { "\\textbf{", "}" } },
        ["e"] = { add = { "\\emph{", "}" } },
        ["m"] = { add = { "\\[", "\\]" } },      -- блочная формула
        ["$"] = { add = { "$", "$" } },          -- инлайн-формула
      },
    },
  },
}
