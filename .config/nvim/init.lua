require("config.lazy")

require("lspconfig").jdtls.setup({
  use_lombok_agent = true,
})

vim.keymap.set("i", "jk", "<esc>", { noremap = true })
