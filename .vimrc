set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
set term=xterm-256color
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'c.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'raimondi/delimitmate'
Plugin 'tomasr/molokai'
Plugin 'dracula/vim'
Plugin 'joshdick/onedark.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'mhartington/oceanic-next'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/vim-seattle'
Plugin 'philpl/vim-adventurous'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'jdkanani/vim-material-theme'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'fatih/vim-go'


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
set lazyredraw                            " Faster rendering command options
set ttyfast                               " Faster terminal connections
set noeol                                 " Don’t add empty line at EOF
set showcmd                               " Show partial command while typing
set ruler                                 " Show line/column number of cursor
set shortmess=atIfilmnrxoOtT              " Skip intro message when starting
set nostartofline                         " Don't reset cursor to line start
set cursorline                            " Highlight current cursor line
set showmode                              " Show current mode
set title                                 " Show filename in titlebar
set showmatch                             " Highlight matching parenthesis
set scrolloff=3                           " Scroll 3 lines before window edge
set number                                " Line number settings
set mouse=a                               " Automatically enable mouse usage
set mousehide                             " Hide the mouse cursor while typing
set hidden                                " Buffer settings
set iskeyword-=.                          " '.' is an end of word designator
set iskeyword-=#                          " '#' is an end of word designator
set iskeyword-=-                          " '-' is an end of word designator
set backspace=indent,eol,start            " Backspace for dummies
set linespace=0                           " No extra spaces between rows
set autowrite                             " Automatically save before :next
set autoread                              " Automatically reread changed files
set diffopt+=vertical                     " Vertical diff splits
set nowrap                                " Do not wrap long lines
set splitright                            " New vsplit windows to the right
set splitbelow                            " New split windows to the bottom
set comments=sl:/*,mb:*,elx:*/            " auto format comment blocks
set modelines=1                           " Last line reserved for vim actions
set linebreak                             " Wrap lines at convenient points
set tabstop=2				  " default tabstop

" Vim-Go {{{
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_interfaces = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1
  let g:go_fmt_command = "goimports"

  au FileType go nmap <leader>gr <Plug>(go-run)
  au FileType go nmap <leader>gb <Plug>(go-build)
  au FileType go nmap <leader>gt <Plug>(go-test)
  au FileType go nmap <leader>gc <Plug>(go-coverage)
  au FileType go nmap <Leader>gds <Plug>(go-def-split)
  au FileType go nmap <Leader>gd <Plug>(go-doc)
  au FileType go nmap <Leader>gdb <Plug>(go-doc-browser)
  au FileType go nmap <Leader>gi <Plug>(go-info)
  au FileType go nmap <Leader>gdv <Plug>(go-def-vertical)
  au FileType go nmap <Leader>gs <Plug>(go-implements)

  let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
  let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
" }}}

" Language {{{
  " {{{ C/C++
    let g:clang_format#code_style = 'google'
    let g:syntastic_cpp_compiler = 'g++'
    let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
    " autocmd FileType cpp ClangFormatAutoEnable   " Toggle auto formatting
  " }}}

  " {{{ Ruby
    let g:tags_ripper = 0
    autocmd FileType ruby let g:tags_ripper = 1
  " }}}
" }}}
