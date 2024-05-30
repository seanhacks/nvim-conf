-- Creates the vscode like trouble buffer in the bottom part of the screen

return {
  {
    -- The actual vscode like trouble bar
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      vim.keymap.set("n", "<leader>tt", ":Trouble <CR>", {})
    end,
  },
  {
    -- Allows highlighting for todos, also these showup in trouble.
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
}

