require("rose-pine").setup({
    variant = "main", -- auto, main, moon, or dawn

    styles = {
        bold = false,
        italic = false,
        transparency = false,
    },
})

vim.cmd("colorscheme rose-pine")
