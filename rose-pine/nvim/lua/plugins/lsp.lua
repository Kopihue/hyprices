local lsps = {
    "ty",
    "clangd",
    "lua_ls"
}

for _, lsp in ipairs(lsps) do
    vim.lsp.enable(lsp)
end

local config = {
    settings = {
	Lua = {
	    runtime = {
		version = 'LuaJIT',
	    },
	    workspace = {
		preloadFileSize = 10000,
		library = {
		    vim.env.VIMRUNTIME,
		}
	    },
	},
    },
}

vim.lsp.config('lua_ls', config)

vim.diagnostic.config({
    virtual_text = {
	spacing = 4,
	prefix = '■',
    },
    signs = true,
    underline = false,
    severity_sort = true,
})
