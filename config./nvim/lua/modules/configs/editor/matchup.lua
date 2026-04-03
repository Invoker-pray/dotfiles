return function()
	vim.g.matchup_transmute_enabled = 1
	vim.g.matchup_surround_enabled = 1
	vim.g.matchup_matchparen_offscreen = { method = "popup" }
	-- Defer matchparen highlighting to avoid conflicts with rainbow-delimiters on InsertEnter
	vim.g.matchup_matchparen_deferred = 1
	vim.g.matchup_matchparen_deferred_show_delay = 100
end
