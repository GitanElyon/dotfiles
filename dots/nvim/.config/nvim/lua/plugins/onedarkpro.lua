return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      theme = "onedark", -- Can be "onedark", "onelight", "darker"
      colors = {
        bg = "#000000"
      },
      options = {
        cursorline = false, -- Highlight cursor line
        transparency = true, -- Disable background transparency
      }
    })
    vim.cmd("colorscheme onedark") -- Set the colorscheme
  end,
}

