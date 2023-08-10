require('lualine').setup {
  options = {
    icons_enabled = true,
    --theme = 'codedark',
    theme = 'kanagawa'
  },
--  sections = {
--    lualine_a = {
--      {
--        'filename',
--     	path = 1,
--      }
--    }
--  },
  extensions = {
    'nvim-tree',
  },
}
