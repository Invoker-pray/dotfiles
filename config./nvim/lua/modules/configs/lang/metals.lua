return function()
	local metals = require("metals")
	local metals_config = metals.bare_config()

	metals_config.settings = {
		showImplicitArguments = true,
		showInferredType = true,
		showImplicitConversionsAndClasses = true,
	}

	metals_config.init_options.statusBarProvider = "off"
	metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

	metals_config.on_attach = function(client, bufnr)
		local map = function(mode, lhs, rhs, desc)
			vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true, desc = desc })
		end

		map("n", "gd", vim.lsp.buf.definition, "定义")
		map("n", "gi", vim.lsp.buf.implementation, "实现")
		map("n", "gr", vim.lsp.buf.references, "引用")
		map("n", "K", vim.lsp.buf.hover, "悬浮文档")
		map("n", "<leader>rn", vim.lsp.buf.rename, "重命名")
		map("n", "<leader>ca", vim.lsp.buf.code_action, "代码操作")
		map("n", "<leader>mc", metals.commands, "Metals 命令")
		map("v", "<leader>mt", metals.type_of_range, "选区类型")

		local ok, dap = pcall(require, "dap")
		if ok then
			metals.setup_dap()
			map("n", "<leader>dc", dap.continue, "继续")
			map("n", "<leader>db", dap.toggle_breakpoint, "断点")
		end
	end

	local group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
	vim.api.nvim_create_autocmd("FileType", {
		pattern = { "scala", "sbt", "java" },
		callback = function()
			metals.initialize_or_attach(metals_config)
		end,
		group = group,
	})
end
