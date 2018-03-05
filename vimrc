"     
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/usr/local/opt/fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'vimwiki/vimwiki'
Plugin 'VundleVim/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'gerw/vim-latex-suite'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fireplace'
Plugin 'slashmili/alchemist.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'easymotion/vim-easymotion'
Plugin 'lervag/vimtex'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'L9'
Bundle 'tpope/vim-fugitive'
Bundle 'python-mode/python-mode' 
"Bundle 'python.vim--Vasiliev' 
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'mdlerch/mc-stan.vim'
Bundle 'maverickg/stan.vim'
"Bundle 'pydave/AsyncCommand' 
"Bundle 'mnick/vim-pomodoro' 
Plugin 'flazz/vim-colorschemes'
Plugin 'sjl/badwolf'
Plugin 'reedes/vim-colors-pencil'
Plugin 'whatyouhide/vim-gotham'
"Plugin 'junegunn/goyo.vim'
"Plugin 'nanotech/jellybeans.vim'
Plugin 'airblade/vim-gitgutter'
"Plugin 'ervandew/supertab'
Plugin 'bling/vim-bufferline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'edkolev/tmuxline.vim'
Plugin 'rizzatti/dash.vim'
Bundle 'farseer90718/vim-taskwarrior'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" " ==========================================================
" " Basic Settings
" " ==========================================================
 syntax on                     " syntax highlighing
 filetype on                   " try to detect filetypes
 set number                    " Display line numbers
 set numberwidth=1             " using only 1 column (and 1 space) while
" possible
 set background=dark           " We are using dark background in vim
 set title                     " show title in console title bar
 set wildmenu                  " Menu completion in command mode on <Tab>
 set wildmode=full             " <Tab> cycles between all matching choices.
 set showcmd
 set laststatus=2
 set colorcolumn=80
   
   " don't outdent hashes
 inoremap # #
    
 set tabstop=2
 set shiftwidth=2
 set expandtab
 set smarttab
 set autoindent
 set smartindent
 set mouse=a
 set hlsearch

 language en_US
 set encoding=utf8
 filetype plugin on
 colorscheme badwolf
 if has("gui_running")
    set lines=80
    set transparency=12
    let g:Powerline_symbols = 'fancy'
 endif
 set guifont=Roboto_Mono_for_Powerline:h11
 "set statusline=%#ErrorMsg#%{PomodoroStatus()}%#StatusLine# 
 let g:airline#extensions#tabline#enabled = 1
 let g:airline_powerline_fonts = 1 
 set backspace=indent,eol,start
 " Make the gutters darker than the background.
 let g:badwolf_darkgutter = 1
 let g:vimwiki_list = [{'path': '$HOME/Documents/Dropbox/wiki'}]
 let mapleader = "\<Space>"

let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_view_general_options_latexmk = '-r 1'
"stop vimtex to compile with save on subfiles
let g:vimtex_latexmk_continuous = 0
let g:tex_conceal = ""

"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

set clipboard=unnamed
let vim_markdown_preview_pandoc=0

