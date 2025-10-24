return {
  'brianhuster/live-preview.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('livepreview.config').set({
      port = 8080, 
      browser = 'zen-browser',
    })
  end,
}
