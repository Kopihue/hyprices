require("tree-sitter-manager").setup({
    parser_dir = vim.fn.expand("~/.local/share/nvim") .. "/site/parser",
    query_dir = vim.fn.expand("~/.local/share/nvim") .. "/site/queries",

    ensure_installed = {
	"python",
	"c",
    },
    highlight = true,

    nerdfont = true, -- use Nerd Font icons in the manager UI
    border = "rounded", -- border style for the TUI window
    min_width = 78, -- minimum size of the TUI
    min_height = 40,
})
