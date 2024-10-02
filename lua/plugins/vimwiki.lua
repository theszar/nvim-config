return
{
    "vimwiki/vimwiki",
    event = "BufEnter *.md",
    keys = { "<leader>ww", "<leader>wt", "<leader>ws" },
    init = function()
        vim.g.vimwiki_folding = ""
        vim.g.vimwiki_list = {
            {
                path = "c:/workspace/notes/projects/",
                syntax = "markdown",
                ext = ".md",
            },
            {
                path = "c:/workspace/notes/private/",
                syntax = "markdown",
                ext = ".md",
            },
        }
        vim.g.vimwiki_ext2syntax = {
            [".md"] = "markdown",
            [".markdown"] = "markdown",
            [".mdown"] = "markdown",
        }
    end,
}
