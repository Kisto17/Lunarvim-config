-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

--find and replace
lvim.builtin.which_key.mappings["r"] = {
	name = "Find and replace",
	s = {
		"viw:lua require('spectre').open_file_search()<cr>",
		"just run",
	},
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"css",
	"rust",
	"java",
	"yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Additional Plugins
lvim.plugins = {
	--AutoSave
	{
		"Pocco81/AutoSave.nvim",
		config = require("plugins-config.autosave-conf").setup(),
	},
	--Jaq aka CodeRunner
	{
		"is0n/jaq-nvim",
		config = require("plugins-config.jaq-conf").setup(),
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = require("plugins-config.indent-blankline-conf").setup(),
	},
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		"ray-x/lsp_signature.nvim",
		require("lsp_signature").setup(),
	},
	{
		"norcalli/nvim-colorizer.lua",
		require("colorizer").setup(),
	},
	{
		"simrat39/symbols-outline.nvim",
	},
	{
		"wfxr/minimap.vim",
	},
	{
		"windwp/nvim-spectre",
		require("spectre").setup(),
	},
	{
		"NvChad/nvterm",
		config = require("plugins-config.nvterm-conf").setup(),
	},
}

--Formatters
require("plugins-config.formatter-conf").setup()

--make hover doc focusable
lvim.lsp.float.focusable = true

-- lvim.lsp.automatic_configuration.skipped_filetyps = "javascript"
lvim.builtin.lualine.sections.lualine_z = { "location" }

lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.size = 10
