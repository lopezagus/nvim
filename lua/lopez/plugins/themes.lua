return {
  -- Current theme
  "EdenEast/nightfox.nvim",
  priority = 1000,
  opts = {
    bold = true,
    italic = { strings = true },
  },
  config = function(_, opts)
    require("nightfox").setup(opts) -- calling setup is optional
    vim.cmd([[colorscheme carbonfox]])
  end,
}
