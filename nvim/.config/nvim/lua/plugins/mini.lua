return {
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      -- Setup any mini modules from the main mini.nvim package here if needed
      -- Example: require('mini.pairs').setup()
      -- Example: require('mini.surround').setup()
    end
  },
  {
    'echasnovski/mini.comment',
    version = '*',
    config = function()
      require('mini.comment').setup()
    end
  },
}
