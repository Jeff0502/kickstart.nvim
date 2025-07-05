
return {
	-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
	{
	'rmagatti/auto-session',
	config = function ()
		require("auto-session").setup {
		log_level = "error",
		auto_session_surpress_dirs = { "~/", "~/Downloads", "/" }
		}
	end,
	}
}
