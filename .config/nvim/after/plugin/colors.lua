function SetupColors()
	local color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- transparent background can be enabled
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetupColors()
