vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.guicursor = ""
vim.opt.scrolloff = 999
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
	local client = vim.lsp.get_client_by_id(args.data.client_id)
	if client then
	    client.server_capabilities.semanticTokensProvider = nil
	end
    end,
})
