-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
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
	{ "folke/tokyonight.nvim" },
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
    require("lsp_signature").setup()
  },
  {
    "norcalli/nvim-colorizer.lua",
    require("colorizer").setup()
  },
  {
    "simrat39/symbols-outline.nvim",
  },
}

--Formatters
require("plugins-config.formatter-conf").setup()
--make hover doc focusable
lvim.lsp.float.focusable = true
