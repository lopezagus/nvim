return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true, -- Enable Treesitter integration for smarter pairing
      disable_filetype = { "TelescopePrompt", "vim" }, -- Disable in some filetypes if desired
    })
  end,
}
