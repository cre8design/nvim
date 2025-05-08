Util = {
	lsp = {
		action = setmetatable({}, {
			__index = function(_, action)
				return function()
					vim.lsp.buf.code_action({
						apply = true,
						context = {
							only = { action },
							diagnostics = {},
						},
					})
				end
			end,
		}),
	},
	diagnostics = {
		to = function(next, severity)
			local go = next and vim.diagnostic.goto_next
				or vim.diagnostic.goto_prev
			severity = severity and vim.diagnostic.severity[severity] or nil
			return function()
				go({ severity = severity })
			end
		end,
	},
}
