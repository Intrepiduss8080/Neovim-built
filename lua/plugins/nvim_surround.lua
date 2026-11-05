return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {
      surrounds = {
        -- Markdown
        ["B"] = { add = { "**", "**" } },        
        ["I"] = { add = { "*", "*" } },          
        ["C"] = { add = { "`", "`" } },          
        ["S"] = { add = { "~~", "~~" } },       

        -- LaTeX
        ["t"] = { add = { "\\textbf{", "}" } },
        ["e"] = { add = { "\\emph{", "}" } },
        ["m"] = { add = { "\\[", "\\]" } },     
        ["$"] = { add = { "$", "$" } },          
      },
    },
  },
}
