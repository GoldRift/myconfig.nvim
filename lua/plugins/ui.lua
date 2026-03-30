---@module 'lazy'
---@type LazySpec
return {
  {
    -- Onedark theme
    'navarasu/onedark.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('onedark').setup {
        style = 'warm',
        styles = {
          comments = { italic = true },
        },
      }

      -- Load the colorscheme here.
      vim.cmd.colorscheme 'onedark'
    end,
  },

  {
    -- Statusline
    'nvim-mini/mini.statusline',
    opts = { use_icons = vim.g.have_nerd_font },
    config = function(_, opts)
      local statusline = require 'mini.statusline'
      statusline.setup(opts)
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function() return '%2l:%-2v' end
    end,
  },
}
