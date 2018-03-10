"     
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/usr/local/opt/fzf
packadd minpac
call minpac#init()

call minpac#add('k-takata/minpac', {'type':'opt'})
"call minpac#add('vimwiki/vimwiki'
call minpac#add('VundleVim/Vundle.vim')
"call minpac#add( 'scrooloose/nerdtree')
call minpac#add('scrooloose/syntastic')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
"call minpac#add('neovimhaskell/haskell-vim')
call minpac#add('JamshedVesuna/vim-markdown-preview')
call minpac#add('vim-pandoc/vim-rmarkdown')
call minpac#add('jalvesaq/Nvim-R')
call minpac#add('vim-pandoc/vim-pandoc')
call minpac#add('vim-pandoc/vim-pandoc-syntax')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-fireplace')
call minpac#add('slashmili/alchemist.vim')
call minpac#add('guns/vim-clojure-static')
call minpac#add('vim-scripts/paredit.vim')
call minpac#add('easymotion/vim-easymotion')
call minpac#add('lervag/vimtex')
call minpac#add('tpope/vim-fugitive')
call minpac#add('ajh17/VimCompletesMe')
"call minpac#add( 'python-mode/python-mode') 
"call minpac#add( 'python.vim--Vasiliev')
call minpac#add('kien/rainbow_parentheses.vim')
call minpac#add('mdlerch/mc-stan.vim')
call minpac#add('maverickg/stan.vim')
"call minpac#add('altercation/vim-colors-solarized')
call minpac#add('sjl/badwolf')
call minpac#add('reedes/vim-colors-pencil')
call minpac#add('whatyouhide/vim-gotham')
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('bling/vim-bufferline')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('edkolev/tmuxline.vim')
"call minpac#add('')
"call minpac#add( 'farseer90718/vim-taskwarrior')

"if has('nvim')
"  call minpac#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
"else
"  call minpac#add('Shougo/deoplete.nvim')
"  call minpac#add('roxma/nvim-yarp')
"  call minpac#add('roxma/vim-hug-neovim-rpc')
"endif
"
"let g:deoplete#enable_at_startup = 1

filetype plugin indent on    " required

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
 "filetype plugin on
 colorscheme solarized8_high
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

set clipboard=unnamed
let vim_markdown_preview_pandoc=0

