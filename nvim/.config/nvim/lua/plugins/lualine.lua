return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local poimandres_theme = {
      normal = {
        a = { fg = '#1b1e28', bg = '#ADD7FF', gui = 'bold' },
        b = { fg = '#a6accd', bg = '#303340' },
        c = { fg = '#767c9d', bg = '#1b1e28' }
      },
      insert = {
        a = { fg = '#1b1e28', bg = '#5DE4c7', gui = 'bold' },
        b = { fg = '#a6accd', bg = '#303340' },
        c = { fg = '#767c9d', bg = '#1b1e28' }
      },
      visual = {
        a = { fg = '#1b1e28', bg = '#d0679d', gui = 'bold' },
        b = { fg = '#a6accd', bg = '#303340' },
        c = { fg = '#767c9d', bg = '#1b1e28' }
      },
      replace = {
        a = { fg = '#1b1e28', bg = '#fffac2', gui = 'bold' },
        b = { fg = '#a6accd', bg = '#303340' },
        c = { fg = '#767c9d', bg = '#1b1e28' }
      },
      command = {
        a = { fg = '#1b1e28', bg = '#89ddff', gui = 'bold' },
        b = { fg = '#a6accd', bg = '#303340' },
        c = { fg = '#767c9d', bg = '#1b1e28' }
      },
      inactive = {
        a = { fg = '#767c9d', bg = '#1b1e28' },
        b = { fg = '#767c9d', bg = '#1b1e28' },
        c = { fg = '#767c9d', bg = '#1b1e28' }
      }
    }

    require('lualine').setup({
      options = {
        theme = poimandres_theme
      },
      tabline = {
        lualine_a = {'buffers'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'tabs'}
      }
    })
  end
}
