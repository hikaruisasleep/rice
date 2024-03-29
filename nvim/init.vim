set nocompatible
set showmatch
set ignorecase
set mouse=v
set hlsearch
set autoindent
set number
set wildmode=longest,list
filetype plugin indent on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
syntax on

call plug#begin('~/.config/nvim/plug')
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'romgrk/barbar.nvim'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'evanleck/vim-svelte'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'codechips/coc-svelte', { 'do': 'npm install' }
call plug#end()

nnoremap <leader><Tab> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

lua << END
    require('lualine').setup {
        options = {
            theme = 'auto'
        }
    }
END

nnoremap <silent> <C-,> <Cmd>BufferPrevious<CR>
nnoremap <silent> <C-.> <Cmd>BufferNext<CR>
nnoremap <silent> <C-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent> <C->> <Cmd>BufferMoveNext<CR>
nnoremap <silent> <C-w> <Cmd>BufferClose<CR>

