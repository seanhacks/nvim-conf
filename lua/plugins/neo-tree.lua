-- This is the file window pop up when pressing <leader>e

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				event_handlers = {
					{
						event = "file_opened",
						handler = function(file_path)
							require("neo-tree.command").execute({ action = "close" })
						end,
					},
				},
			})
			vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left <CR>", {})
		end,
	},
	-- Allows for switching between buffers and changes how buffers look
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					buffer_close_icon = "",
					modified_icon = "●",
					close_icon = "",
					left_trunc_marker = "",
					right_trunc_marker = "",
					max_name_length = 14,
					max_prefix_length = 13,
					tab_size = 18,
					enforce_regular_tabs = false,
					view = "multiwindow",
					show_buffer_close_icons = true,
					separator_style = "slant",
				},
			})

			local opt = { silent = true }

			--removing a buffer
			vim.api.nvim_set_keymap("n", "<S-f>", [[<Cmd>bdelete<CR>]], opt)

			-- tabnew and tabprev
			vim.api.nvim_set_keymap("n", "<S-k>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
			vim.api.nvim_set_keymap("n", "<S-j>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
		end,
	},
}
