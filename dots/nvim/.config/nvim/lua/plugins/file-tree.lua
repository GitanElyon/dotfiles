return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Icons for files/folders
  config = function()
    require("nvim-tree").setup({
      view = {
        side = "right", -- File explorer appears on the right
        width = 35,
      },
      renderer = {
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "▶", -- Customize icons
              arrow_open = "▼",
            },
          },
        },
      },
      update_focused_file = {
        enable = true, -- Focus on file in tree when opening
      },
      filters = {
        dotfiles = false, -- Show hidden files
      },
    })

    -- Keybinding to toggle nvim-tree
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true, noremap = true })
  end,
}

