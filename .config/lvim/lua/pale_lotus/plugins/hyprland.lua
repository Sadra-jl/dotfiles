vim.list_extend(lvim.plugins,  { "tree-sitter-grammars/tree-sitter-hyprlang" })

vim.filetype.add(
    {
        pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
    }
)
