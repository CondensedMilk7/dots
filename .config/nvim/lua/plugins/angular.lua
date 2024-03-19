return {
  -- { "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" },
  {
    "dlvandenberg/tree-sitter-angular",
    config = function(_, opts)
      vim.filetype.add({
        pattern = {
          -- Sets the filetype to `angular.html` if it matches the pattern
          -- WARNING: This globally sets all html files in angular project to "angular.html"
          [".*%.component%.html"] = "angular.html",
        },
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "angular.html",
        callback = function()
          vim.treesitter.language.register("angular", "angular.html") -- Register the filetype with treesitter for the `angular` language/parser
        end,
      })
    end,
  },
}
