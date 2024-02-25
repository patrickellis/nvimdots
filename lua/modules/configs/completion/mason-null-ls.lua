local M = {}

M.setup = function()
	require("modules.utils").load_plugin("mason-null-ls", {
		ensure_installed = require("core.settings").null_ls_deps,
		automatic_installation = true,
		automatic_setup = true,
		handlers = nil,
	})
end

return M
