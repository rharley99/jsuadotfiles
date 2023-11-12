-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remove key mappings that conflict with macOS
vim.keymap.del("n", "<C-Up>")
vim.keymap.del("n", "<C-Down>")
vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")

-- Resize with simple arrow keys
vim.keymap.set("n", "<Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Back to normal mode
vim.keymap.set("i", "jj", "<ESC>")

-- Equalize splits
vim.keymap.set("n", "<leader>b=", "<cmd>wincmd =<cr>", { desc = "Balance windows" })

-- Zoom current buffer
vim.keymap.set("n", "<leader>bz", "<cmd>wincmd _<cr>:wincmd |<cr>", { desc = "Zoom buffer" })

-- Toggle MiniMap
vim.keymap.set("n", "<leader>m", "<cmd>lua MiniMap.toggle()<cr>", { desc = "MiniMap" })

-- Toggle curly quotes
vim.keymap.set("n", "<leader>uE", "<cmd>ToggleEducate<cr>", { desc = "Toggle curly quotes (Educate)" })

-- Save without formatting
vim.keymap.set("n", "<leader>qQ", "<cmd>noautocmd w<cr>", { desc = "Save without formatting" })

-- Buffer search/replace
vim.keymap.set("n", "<leader>sr", ":%s/", { desc = "Buffer search/replace" })

-- Toggle ColorColumn
vim.keymap.set(
  "n",
  "<leader>uo",
  "<cmd>lua require('config.functions').toggle_colorcolumn()<cr>",
  { desc = "Toggle ColorColumn" }
)
