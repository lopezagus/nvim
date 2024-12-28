vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs & Indentation section
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.backspace = "indent,eol,start"

-- Language-specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript,typescript,json",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})
-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Visual settings
opt.cursorline = true -- Focus current line

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Clipboard settings
opt.clipboard:append("unnamedplus")

-- Window split settings
opt.splitright = true -- vertical split windows to the right
opt.splitbelow = true -- horizontal split windows to the bottom
