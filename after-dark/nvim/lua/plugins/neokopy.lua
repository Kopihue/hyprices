vim.opt.runtimepath:append("~/.local/share/nvim/neokopy")

local packs = {
    "https://github.com/romus204/tree-sitter-manager.nvim",
    "https://github.com/Kopihue/kopischemes",
    "https://github.com/lukas-reineke/indent-blankline.nvim",
    "https://github.com/sphamba/smear-cursor.nvim",
    "https://github.com/windwp/nvim-autopairs",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/saghen/blink.cmp",
    "https://github.com/saghen/blink.lib",
    "https://github.com/brenoprata10/nvim-highlight-colors",
    "https://github.com/Vimjas/vim-python-pep8-indent",
}

for _, pack in ipairs(packs) do
    require("neokopy").add(pack)
end

require("plugins.tree_sitter")
require("plugins.lsp")
require("plugins.blink")

require("plugins.kopischemes")
require("plugins.smear_cursor")
require("plugins.indent_blanklines")
require("plugins.csscolors")

require("plugins.autopairs")
require("plugins.telescope")
