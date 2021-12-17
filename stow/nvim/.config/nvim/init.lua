-- require('config.plug')
require('config.plugins')

-- For some reason setting this in the after/plugin/airline.vim has no effect;
-- setting it here solves it.
vim.g.airline_powerline_fonts = 1
