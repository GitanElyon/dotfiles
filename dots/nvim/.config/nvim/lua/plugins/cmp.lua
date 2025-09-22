return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",  -- LSP autocompletion
    "hrsh7th/cmp-buffer",     -- Buffer word completion
    "hrsh7th/cmp-path",       -- File path completion
    "hrsh7th/cmp-cmdline",    -- Command-line completion
    "L3MON4D3/LuaSnip",       -- Snippet engine
    "saadparwaiz1/cmp_luasnip" -- Snippet completion
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)  -- Expand snippets
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(), -- Navigate autocomplete menu
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}

