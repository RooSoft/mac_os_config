" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.
filetype off

"silent! call pathogen#runtime_append_all_bundles()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'isRuslan/vim-es6'
Plugin 'pangloss/vim-javascript'
Plugin 'heavenshell/vim-jsdoc'
" Plugin 'joegesualdo/jsdoc.vim'
Plugin 'moll/vim-node'
Plugin 'vim-scripts/tComment'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-fugitive'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mileszs/ack.vim'
Plugin 'mkitt/tabline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'powerline/powerline'
Plugin 'easymotion/vim-easymotion'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plugin 'Shougo/neocomplcache'
Plugin 'posva/vim-vue'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'

call vundle#end()            " required

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules$'
  \ }

let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['ruby', 'javascript'],
                            \ 'passive_filetypes': [] }

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_eslint_exe='./.eslintrc.json'
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') !=# '' ? ['eslint'] : []

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set tabstop=4
set shiftwidth=4

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType json setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType typescript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

set t_RV=			  " pour supprimer les \x80\xFD5 dans vimgolf

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set nowrap                        " Turn off line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set clipboard=unnamed

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Or use vividchalk
colorscheme topfunky-light

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

map N Nzz
map n nzz
map , :b#<cr>

nmap <CR> o<Esc>k

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" Mouse reporting
:set mouse=a

" Color scheme
set background=dark
colorscheme solarized

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

highlight Pmenu ctermfg=3 ctermbg=0
highlight PmenuSel ctermfg=black

" easy commenting
nnoremap # :TComment<CR>
vnoremap # :TComment<CR>

" Ruby autocomplete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold


let g:buffergator_display_regime = "bufname"
let g:buffergator_vsplit_size = 80

nnoremap <silent> <Leader>v :NERDTreeFind<CR>
