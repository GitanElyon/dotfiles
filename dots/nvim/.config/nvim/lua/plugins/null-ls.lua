return {
  "nvimtools/none-ls.nvim", -- Formerly `jose-elias-alvarez/null-ls.nvim`
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Formatters
        -- null_ls.builtins.formatting.rustfmt,   -- Rust formatter
        -- null_ls.builtins.formatting.prettier,  -- JS/TS/HTML/CSS formatter
        -- null_ls.builtins.formatting.black,     -- Python formatter

        -- Linters
        -- null_ls.builtins.diagnostics.clippy,   -- Rust linter
        -- null_ls.builtins.diagnostics.eslint_d, -- JS/TS linter
        -- null_ls.builtins.diagnostics.flake8,   -- Python linter
      },
    })

    -- Autoformat on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}

