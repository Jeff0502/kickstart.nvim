vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Change dir to current
vim.o.autochdir = true

-- Disable continuous forward search
vim.o.hlsearch = false

return {
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = false,
        theme = 'gruvbox',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  { 'echasnovski/mini.icons', version = false },
  { 'nvim-tree/nvim-web-devicons' },

  vim.keymap.set('t', '<leader>gt', [[<C-\><C-n><Cmd>tabnext<CR>]], { desc = 'Next tab from terminal' }),
}
