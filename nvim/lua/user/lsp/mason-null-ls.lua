local mason_null_ls_status_ok, mason_null_ls = pcall(require, "null-ls")
if not mason_null_ls_status_ok then
	return
end


mason_null_ls.setup({
ensure_installed = {
        -- Opt to list sources here, when available in mason.
    },
    automatic_installation = false,
    handlers = {},
})


