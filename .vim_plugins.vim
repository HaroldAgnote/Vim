set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

filetype on

" My Plugins "

" added nerdtree (vim file explorer)
" Use ? for help or :help nerdtree
Plugin 'scrooloose/nerdtree'

" Adjust NerdTree Window Size
let NERDTreeWinSize = 10

" adding fugitive (git plugin)
" :help fugitive
Plugin 'tpope/vim-fugitive'

" Gist Plugin (Use :Gist)
" :help Gist
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

" surround.vim: quoting/parenthizing made simple
" :help surround
Plugin 'tpope/vim-surround'

" adding delimitmate (auto close brackets, brace, etc.)
" :help delimitMate
Plugin 'raimondi/delimitmate'

" adding syntastic (syntax checker)
" :help syntastic
Plugin 'scrooloose/syntastic'
let g:syntastic_tex_checkers=['chktex']

" You complete me = autocompleter
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ignore some tex stuff
let g:syntastic_quiet_messages = { "regex": [
        \ '\mpossible unwanted space at "{"'
        \ ] }

" Adding color theme
"Use 'colorscheme COLOR' to change
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

" Adding airline (bottom status bar) and themes
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline_powerline_fonts = 1
let g:airline_theme = 'murmur'

" Adding Nerd Commenter (commenting functions <leader> cc)
" :help nerdcommenter
Plugin 'scrooloose/nerdcommenter'

" Nerd Commenter settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"Tabular Plugin
" :help tabular
Plugin 'godlygeek/tabular'

"Markdown Plugin
" :help markdown
Plugin 'plasticboy/vim-markdown'

" Disables folding
let g:vim_markdown_folding_disabled = 1

" Multi Cursors (Use <C-n>)
" :help vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'

" Vim - Pasta
" :help pasta
Plugin 'sickill/vim-pasta'

" Ack for searching (:Ack [options] {pattern} [{directories}])
" :help ack
Plugin 'mileszs/ack.vim'

" Rust Plugin
" :help rust
Plugin 'rust-lang/rust.vim'

" Go Plugin
" :help go
Plugin 'fatih/vim-go'

" /My Plugins "


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

