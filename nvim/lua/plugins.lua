-- lua/pluginslua

return {

	-----------------------------------------------------------
	-- ПЛАГИНЫ ВНЕШНЕГО ВИДА
	-----------------------------------------------------------

	-- Цветовая схема
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nordic").load()
		end,
	},

	-- Информационная строка внизу
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "nordic",
				},
			})
		end,
	},

	-- Табы вверху
	{
		"akinsho/bufferline.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("bufferline").setup()
		end,
	},

	-----------------------------------------------------------
	-- НАВИГАЦИЯ
	-----------------------------------------------------------

	-- Файловый менеджер
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup()
		end,
	},

	-- Навигация внутри файла по классам и функциям
	{ "majutsushi/tagbar" },

	-- Замена fzf и ack
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup()
		end,
	},

	-----------------------------------------------------------
	-- LSP и автодополнялка
	-----------------------------------------------------------

	-- Highlight, edit, and navigate code using a fast incremental parsing library
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- Collection of configurations for built-in LSP client
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason-lspconfig.nvim" },
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	-- Форматирование
	{
		"mhartington/formatter.nvim",
		config = function()
			require("formatter").setup({
				logging = true,
				log_level = vim.log.levels.WARN,
				filetype = {
					lua = {
						require("formatter.filetypes.lua").stylua,
					},
					json = {
						require("formatter.filetypes.json").jq,
					},

					["*"] = {
						require("formatter.filetypes.any").remove_trailing_whitespace,
					},
				},
			})
		end,
	},

	-- Автодополнялка
	{
		"hrsh7th/nvim-cmp",
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "saadparwaiz1/cmp_luasnip" },
	-- Автодополнлялка к файловой системе
	{ "hrsh7th/cmp-path" },

	-- Snippets plugin
	{ "L3MON4D3/LuaSnip" },

	-----------------------------------------------------------
	-- РАЗНОЕ
	-----------------------------------------------------------

	-- Даже если включена русская раскладка vim команды будут работать
	{ "powerman/vim-plugin-ruscmd" },

	-- ]p - вставить на строку выше, [p - ниже
	{ "tpope/vim-unimpaired" },

	-- Переводчик рус - англ
	{ "voldikss/vim-translator" },

	-- popup окошки
	--{ "nvim-lua/popup.nvim" },

	-- Обрамляет или снимает обрамление. Выдели слово, нажми S и набери <h1>
	{ "tpope/vim-surround" },

	-- Считает кол-во совпадений при поиске
	{ "google/vim-searchindex" },

	-- Может повторять через . vimsurround
	{ "tpope/vim-repeat" },

	-- Стартовая страница, если просто набрать vim в консоле
	{ "mhinz/vim-startify" },

	-- Комментирует по gc все, вне зависимости от языка программирования
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	-- Закрывает автоматом скобки
	{ "cohama/lexima.vim" },

	-- Линтер, работает для всех языков
	{ "dense-analysis/ale" },
	-- Тренировка команд vim
	{ "ThePrimeagen/vim-be-good" },

}
