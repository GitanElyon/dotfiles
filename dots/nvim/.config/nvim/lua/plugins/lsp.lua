return {
  "neovim/nvim-lspconfig",
  config = function()

    vim.lsp.enable({ 'rust-analyzer'})


    -- Configure rust-analyzer
    vim.lsp.config('rust_analyzer', {
      settings = {
        ["rust-analyzer"] = {
          cargo = { allFeatures = true },
          checkOnSave = { command = "clippy" },
        },
      },
    })


    -- Keybindings for LSP features
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover info" })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
  end,
}

