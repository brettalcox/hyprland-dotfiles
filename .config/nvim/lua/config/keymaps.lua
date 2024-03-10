-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")
wk.register({ C = { name = "Crates" } }, { prefix = "<leader>" })

-- Crates
local crates = require("crates")
vim.keymap.set("n", "<leader>Ct", crates.toggle, { desc = "Toggle Crates", silent = true })
vim.keymap.set("n", "<leader>Cr", crates.reload, { desc = "Crates reload", silent = true })

vim.keymap.set("n", "<leader>Cv", crates.show_versions_popup, { desc = "Show versions", silent = true })
vim.keymap.set("n", "<leader>Cf", crates.show_features_popup, { desc = "Show features", silent = true })
vim.keymap.set("n", "<leader>Cd", crates.show_dependencies_popup, { desc = "Show dependencies", silent = true })

vim.keymap.set("n", "<leader>Cu", crates.update_crate, { desc = "Update Crate", silent = true })
vim.keymap.set("v", "<leader>Cu", crates.update_crates, { desc = "Update Crate(s)", silent = true })
vim.keymap.set("n", "<leader>Ca", crates.update_all_crates, { desc = "Update all Crates", silent = true })
vim.keymap.set("n", "<leader>CU", crates.upgrade_crate, { desc = "Upgrade Crate", silent = true })
vim.keymap.set("v", "<leader>CU", crates.upgrade_crates, { desc = "Upgrade Crate(s)", silent = true })
vim.keymap.set("n", "<leader>CA", crates.upgrade_all_crates, { desc = "Upgrade all Crates", silent = true })

vim.keymap.set(
  "n",
  "<leader>Cx",
  crates.expand_plain_crate_to_inline_table,
  { desc = "Expand Crate to inline table", silent = true }
)
vim.keymap.set("n", "<leader>CX", crates.extract_crate_into_table, { desc = "Extract Crate into table", silent = true })

vim.keymap.set("n", "<leader>CH", crates.open_homepage, { desc = "Open homepage", silent = true })
vim.keymap.set("n", "<leader>CR", crates.open_repository, { desc = "Open repository", silent = true })
vim.keymap.set("n", "<leader>CD", crates.open_documentation, { desc = "Open documentation", silent = true })
vim.keymap.set("n", "<leader>CC", crates.open_crates_io, { desc = "Open crates.io", silent = true })
