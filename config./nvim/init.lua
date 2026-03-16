if not vim.g.vscode then
	require("core")
end

-- 进入 nvim：提高不透明度
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.fn.system("kitty @ set-background-opacity 0.85")
	end,
})

-- 退出 nvim：恢复透明
vim.api.nvim_create_autocmd("VimLeavePre", {
	callback = function()
		vim.fn.system("kitty @ set-background-opacity 0.85")
	end,
})

vim.opt.termguicolors = true
vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalFloat guibg=NONE
]])

vim.api.nvim_create_autocmd("FileType", {
	pattern = "tex",
	callback = function()
		vim.opt_local.wrap = true -- 开启折行
		vim.opt_local.linebreak = true -- 不在单词中间断行
		vim.opt_local.breakindent = true -- 换行后保持缩进
		vim.opt_local.spell = true -- (可选) 开启拼写检查，写论文常用
	end,
})
