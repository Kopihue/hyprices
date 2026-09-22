require("blink.cmp").build():pwait()

require("blink.cmp").setup({
    keymap = { preset = 'default' },
    completion = { documentation = { auto_show = true } },
    fuzzy = { implementation = "rust" }
})
