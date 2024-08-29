-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information


return {
	{ 
	"ellisonleao/gruvbox.nvim", priority = 1000 , config = function()
		vim.o.background = "dark",
		vim.cmd([[colorscheme gruvbox]])
		end
	},
	
	{
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'gruvbox',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

}
