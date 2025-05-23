local supported = {
	"css",
	"graphql",
	"handlebars",
	"html",
	"javascript",
	"javascriptreact",
	"json",
	"jsonc",
	"less",
	"markdown",
	"markdown.mdx",
	"scss",
	"typescript",
	"typescriptreact",
	"vue",
	"yaml",
}

function has_config(ctx)
	vim.fn.system({ "prettier", "--find-config-path", ctx.filename })
	return vim.v.shell_error == 0
end

function has_parser(ctx)
	local ft = vim.bo[ctx.buf].filetype
	if vim.tbl_contains(supported, ft) then
		return true
	end
	local ret = vim.fn.system({ "prettier", "--file-info", ctx.filename })
	local ok, parser = pcall(function()
		return vim.fn.json_decode(ret).inferredParser
	end)
	return ok and parser and parser ~= vim.NIL
end

return {
	{
		"mason-org/mason.nvim",
		opts = { ensure_installed = { "prettier" } },
	},
	{
		"stevearc/conform.nvim",
		opts = function(_, opts)
			opts.formatters_by_ft = opts.formatters_by_ft or {}
			for _, ft in ipairs(supported) do
				opts.formatters_by_ft[ft] = opts.formatters_by_ft[ft] or {}
				table.insert(opts.formatters_by_ft[ft], "prettier")
			end

			opts.formatters = opts.formatters or {}
			opts.formatters.prettier = {
				condition = function(_, ctx)
					return has_parser(ctx)
						and (
							vim.g.lazyvim_prettier_needs_config ~= true
							or has_config(ctx)
						)
				end,
			}
		end,
	},
}
