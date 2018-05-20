set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe' 
Plugin 'pangloss/vim-javascript'
Bundle "lepture/vim-jinja"
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/syntastic'

Plugin 'scrooloose/nerdtree'
Plugin 'mtscout6/syntastic-local-eslint.vim'

Plugin 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Plugin 'JamshedVesuna/vim-markdown-preview'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

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

" JSX File Recognition
let g:jsx_ext_required = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"""""" YCM YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

"""""" SYNTASTIC SETTINGS 
""""let g:syntastic_debug = 3
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint' " Look for eslint within local npm installation
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['pylint']

"""""" NERDTree SETTINGS
map <C-n> :NERDTreeToggle<CR>

"""""" GENERAL SETTINGS
" enable syntax highlighting
syntax enable

" show line numbers
set number

" indent when moving to the next line while writing code
set autoindent

" when using the >> or << commands, shift lines by 4 spaces
" set tabs to have 4 spaces
" expand tabs into spaces
set shiftwidth=4
set tabstop=4
set expandtab

" for js/css files, 2 spaces
au Filetype javascript setl ts=2 sw=2 sts=2
au Filetype css setl ts=2 sw=2 sts=2
au Filetype yaml setl ts=2 sw=2 sts=2

" Make delete key work as expected
set backspace=indent,eol,start

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" THEME SETTINGS
set background=dark
colorscheme base16-railscasts

highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

highlight Comment cterm=italic
highlight htmlArg cterm=italic

" What does completeopt do...
" set completeopt-=preview





