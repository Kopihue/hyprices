require("blink.cmp").build():pwait()

require("blink.cmp").setup({
    keymap = {
        preset = 'default',
        -- Mapea Tab para seleccionar y aceptar la sugerencia
        ['<Tab>'] = { 'select_and_accept', 'fallback' },
    },
    completion = { documentation = { auto_show = true } },
    fuzzy = { implementation = "rust" }
})
