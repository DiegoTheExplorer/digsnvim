return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = {
        {
          name = 'Day',
          colorscheme = 'kanagawa-lotus',
        },
        {
          name = 'Night',
          colorscheme = 'kanagawa-wave',
        },
      },
      vim.keymap.set('n', '<leader>tt', function()
        local themery = require 'themery'
        local currentTheme = themery.getCurrentTheme()
        if currentTheme and currentTheme.name == 'Day' then
          themery.setThemeByName('Night', true)
        else
          themery.setThemeByName('Day', true)
        end
      end, { noremap = true }),
    }
  end,
}
