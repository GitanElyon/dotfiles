return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Auto-update parsers after installation
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "rust", "lua", "python", "javascript", "typescript", "json" ,"toml", "yaml", "markdown" },
      highlight = {
        enable = true, -- Enable syntax highlighting
      },
      indent = { enable = true }, -- Auto-indentation
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<leader>si",
          node_incremental = "<leader>sn",
          scope_incremental = "<leader>ss",
          node_decremental = "<leader>sd",
        },
      },
    })
  end,
}

