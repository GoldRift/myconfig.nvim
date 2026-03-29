---@module 'lazy'
---@type LazySpec
return {
  -- Collection of various small independent plugins/modules
  {
    -- Statusline
    'nvim-mini/mini.statusline',
    opts = { use_icons = vim.g.have_nerd_font },
    config = function()
      local statusline = require 'mini.statusline'
      statusline.setup()
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function() return '%2l:%-2v' end
    end,
  },
  {
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    'nvim-mini/mini.ai',
    opts = { n_lines = 500 },
  },
  {
    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    'nvim-mini/mini.surround',
  },
  {
    'nvim-mini/mini.pairs',
    event = 'InsertEnter',
    opts = { modes = { insert = true } },
  },
}
