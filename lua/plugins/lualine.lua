-- gives us the lualine bar at the bottom.

return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
      },
    })
  end,
}
