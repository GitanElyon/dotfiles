return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      model = "claude-sonnet-4",
      temperature = 0.2, -- x++ : creative, x-- : precise

      window = {
        width = 0.33,
        border = "rounded",
      },
      headers = {
        user = 'GitanElyon',
        assistant = 'Copilot',
        tool = 'Tool',
      },
      separator = '━━',
      -- auto_insert_mode = true,
      insert_at_end = false,

    },
    -- See Commands section for default commands if you want to lazy load on them
    vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>CopilotChatToggle<CR>", { noremap = true, silent = true }),
    vim.api.nvim_set_keymap("n", "<leader>cr", "<cmd>CopilotChatReset<CR>", { noremap = true, silent = true }),
    vim.api.nvim_set_keymap("n", "<leader>cp", "<cmd>CopilotChatPrompts<CR>", { noremap = true, silent = true }),
    vim.api.nvim_set_keymap("n", "<leader>cm", "<cmd>CopilotChatModels<CR>", { noremap = true, silent = true })



   
  },
}
