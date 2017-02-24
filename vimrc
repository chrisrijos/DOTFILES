set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'moll/vim-node'
Plugin 'shougo/neocomplete.vim'
Plugin 'shougo/neosnippet.vim'
Plugin 'shougo/neosnippet-snippets'
Plugin 'shougo/neocomplcache'
Plugin 'burnettk/vim-angular'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'raimondi/delimitmate'
Plugin 'bling/vim-airline'
Plugin 'quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'herringtondarkholme/yats.vim'

" Colors
syntax on 
set background=dark
colorscheme quantum
set expandtab
set shiftwidth=2
set softtabstop=2
set number

call vundle#end()
filetype plugin indent on 

map <C-n> :NERDTreeToggle<CR>

" Buffers
nnoremap <c-b> :buffers<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#auto_completion_start_length = 1
let g:neocomplete#sources#buffer#cache_limit_size = 50000

" Typescript
" let g:typescript_compiler_binary = 'tsc'
" let g:typescript_compiler_options = ''

" Syntastic
let g:syntastic_javascript_checkers = ['typescript', 'javascript', 'json']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" TabLine
let g:airline#extensions#tabline#enabled = 1

" <TAB>: completion.
 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
 \ <SID>check_back_space() ? "\<TAB>" :
 \ neocomplete#start_manual_complete()
 function! s:check_back_space() "{{{
 let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~ '\s'
 endfunction"}}}

