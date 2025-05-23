Util = {
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
