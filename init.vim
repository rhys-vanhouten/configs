" Init plug
call plug#begin('~/.vim/plugged')

" NerdTree
Plug 'preservim/nerdtree'

" fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" commenter
Plug 'preservim/nerdcommenter'

" surround
Plug 'tpope/vim-surround'

" git
Plug 'tpope/vim-fugitive'

" deoplete
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'

" typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" php
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}

" Install plugins
call plug#end()


" Configuration
" enable deoplete (async autocomplete engine)
let g:deoplete#enable_at_startup = 1

" relative + absolute line numbers
:set number relativenumber

" search highlighting
set nohlsearch
nnoremap <Leader>h :set hlsearch!<CR>

" NerdTree
let g:NERDTreeChDirMode = 2  " Change cwd to parent node
let g:NERDTreeMinimalUI = 1  " Hide help text
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeFind<CR>

" spaces
set expandtab
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2
autocmd Filetype js setlocal tabstop=4 shiftwidth=4
autocmd Filetype vue setlocal tabstop=2 shiftwidth=2
autocmd Filetype php setlocal tabstop=4 shiftwidth=4
autocmd Filetype ts setlocal tabstop=4 shiftwidth=4

" ts jumping
:nnoremap <Leader>j :TSDef<CR>
:nnoremap <Leader>J :TSDefPreview<CR>