-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/pylsp.lua
return {
	cmd = { "pylsp" },
	filetypes = { "python" },
	settings = {
		pylsp = {
			plugins = {
				-- Lint
				ruff = {
					enabled = false,
					extendSelect = { "ALL" },
					format = { "ALL" },
					ignore = {}, -- error codes to ignore
					-- TODO: investigate why config path doesn't work / validate that it is broken
					config = "$HOME/.config/python/pyproject.toml",
				},
				flake8 = { enabled = false },
				pyflakes = { enabled = false },
				pycodestyle = { enabled = false },
				pydocstyle = {
					enabled = true,
					convention = "google",
					addIgnore = { "D105", "D107" },
				},
				pylsp_mypy = {
					enabled = true,
					report_progress = true,
					live_mode = false,
				},
				mccabe = { enabled = false },
				-- pylint = {
				-- 	enabled = false,
				-- 	executable = "pylint",
				-- Causes an error.
				-- args = {
				-- 	"--rcfile $HOME/.config/python/pylintrc",
				-- },
				-- },

				-- Code refactor
				rope = { enabled = true },

				-- Formatting
				black = { enabled = false },
				pyls_isort = { enabled = false },
				autopep8 = { enabled = false },
				yapf = { enabled = false },
			},
		},
	},
}
