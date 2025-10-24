return {
 "github/copilot.vim",
  config = function()
    -- Enable Copilot suggestion keybindings
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap('i', '<S-Tab>', 'copilot#Accept()', { silent = true, expr = true })
    vim.api.nvim_set_keymap('i', '<C-e>', 'copilot#Dismiss()', { silent = true, expr = true })
    


    -- You can also set these options if needed:
    vim.g.copilot_filetypes = {
      markdown = true,
    }
  end,
   
}
