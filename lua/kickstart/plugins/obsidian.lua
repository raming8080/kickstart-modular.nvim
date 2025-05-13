return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('obsidian').setup {
      workspaces = {
        {
          name = 'csd',
          path = '~/notes',
        },
      },
    }

    vim.keymap.set('n', '<leader>on', ':ObsidianNew<CR>', { desc = 'New Obsidian Note' })
    vim.keymap.set('n', '<leader>ot', ':ObsidianToday<CR>', { desc = "Open Today's Note" })
  end,
}
