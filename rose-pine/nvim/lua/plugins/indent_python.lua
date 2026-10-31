vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
	vim.schedule(function()
	    vim.opt_local.indentexpr = "GetPythonPEPIndent(v:lnum)"
	end)
    end,
})
