vim.g.mapleader = " "

local keymap = vim.keymap -- reference shortcut

-- Mode change shortcuts
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk"})

-- Number operations shortcuts
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number"})
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number"})

-- Search related shortcuts
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights"})

-- Window management shortcuts
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertical"})
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontal"})
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Split window vertical"})

-- Tab Management shortcuts
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab"})

