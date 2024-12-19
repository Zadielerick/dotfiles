return {
	"sainnhe/everforest",
	priority = 1000, -- Ensures loading before the start of all other plugins
	init = function()
		vim.cmd.colorscheme("everforest")
	end,
}
