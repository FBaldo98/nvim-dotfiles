set nocompatible
filetype off
set encoding=utf-8

set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

call plug#begin('C:/Users/fbald/AppData/Local/nvim/plugged')

Plug 'dracula/vim', {'as': 'dracula'}
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'

Plug 'windwp/nvim-autopairs'

Plug 'sheerun/vim-polyglot'

Plug 'shaunsingh/nord.nvim'

call plug#end()

let g:coc_global_extensions=['coc-omnisharp', 'coc-rust-analyzer', 'coc-zig']

lua << EOF
require("nvim-tree").setup({
	filters = {
		dotfiles = false,
	},
})

require("nvim-lsp-installer").setup {}

local npairs = require("nvim-autopairs")
npairs.setup({
	check_ts = true
})

local ts_conds = require('nvim-autopairs.ts-conds')
EOF

:let mapleader = ','

nmap <leader>ff <cmd>Telescope find_files<cr>
nmap <leader>fg <cmd>Telescope live_grep<cr>

nmap <leader>t <cmd>NvimTreeToggle<cr>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

:colorscheme nord
