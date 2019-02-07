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

Bundle "lepture/vim-jinja"
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'plasticboy/vim-markdown'
Plugin 'manabuishii/vim-cwl'

Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'

Plugin 'w0rp/ale'
Plugin 'whiteinge/diffconflicts'

Plugin 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'

""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALL OF YOUR PLUGINS MUST BE ADDED BEFORE THIS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""

" To ignore plugin indent changes, instead use:
"filetype plugin on
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""
""""" BRIEF VUNDLE HELP
"""""""""""""""""""""""
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""
"" JSX FILE RECOGNITION
"""""""""""""""""""""""
let g:jsx_ext_required = 0


"""""""""""""""""""""""
"""""""""" YCM SETTINGS
"""""""""""""""""""""""
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

"""""""""""""""""""""""
""" ALE ASYNC SETTINGS 
"""""""""""""""""""""""
let g:ale_linters={
\   'python': ['flake8'],
\   'javascript': ['eslint']
\}
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace']
\}
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_open_list=1
let g:ale_open_list=0
let g:ale_lint_on_save=1
let g:ale_lint_on_text_changed=1
let g:ale_echo_cursor=1
let g:ale_set_highlights=1
let g:ale_warn_about_trailing_whitespace=1
"let g:ale_set_loclist=0
"let g:ale_set_quickfix=1
autocmd QuitPre * if empty(&bt) | lclose | endif

"""""""""""""""""""""""
"""""" MARKDOWN SYNTAX 
"""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
"let g:vim_markdown_folding_level = 6

"""""""""""""""""""""""
""""" NERDTree SETTINGS
"""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""
"" GENERAL VIM SETTINGS
"""""""""""""""""""""""
syntax enable
set number
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
set backspace=indent,eol,start
set showmatch
set laststatus=2
let python_highlight_all = 1

" Tab/Space 
au Filetype javascript setl ts=2 sw=2 sts=2
au Filetype css setl ts=2 sw=2 sts=2
au Filetype yaml setl ts=2 sw=2 sts=2
au Filetype cwl setl ts=2 sw=2 sts=2

" VIM SPLIT remapping
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"""""""""""""""""""""""
"""""""" THEME SETTINGS
"""""""""""""""""""""""
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


