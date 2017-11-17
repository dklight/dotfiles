set nocompatible " choose no compatibility with legacy vi
set encoding=utf-8 " sensible encoding
set showcmd " display incomplete commands
set shell=zsh

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'davidhalter/jedi-vim'

Plugin 'bling/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-fugitive'

Plugin 'godlygeek/tabular'

Plugin 'plasticboy/vim-markdown'

Plugin 'vim-scripts/indenthtml.vim'

" Plugin 'Shougo/neocomplete.vim'

Plugin 'mfukar/robotframework-vim'

Plugin 'nvie/vim-flake8'

Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" auto reload vimrc when editing it
autocmd! BufWritePost .vimrc source ~/.vimrc

" remember more commands and search history
set history=10000

"" User Interface
set number " need those line numbers
set mouse=a
set ttymouse=xterm2
set ruler " show the line/column number of the cursor position
set nowrap " don't wrap lines
set linebreak " break line for wrapping at end of a word
set expandtab " use spaces, not tabs (optional)
set tabstop=4 shiftwidth=4 " a tab is two spaces (or set this to 4)
set softtabstop=4
set backspace=indent,eol,start " backspace through everything in insert mode
set autoread " auto read when file is changed from outside
set clipboard=unnamed " yank to the system register (*) by default
set hid " hide abandon buffers in order to not lose undo history


"" Searching
set showmatch " cursor shows matching ) and }
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ... unless they contain at least one capital letter

"" Colors
set term=xterm-256color
syntax enable
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized " can't work with anything else
highlight LineNr ctermfg=darkgrey
set cursorline " highlight current line
set list " turn on invisible characters
set listchars=tab:▸\ ,trail:▝ " which characters to highlight
highlight NonText guifg=#444444
highlight SpecialKey guifg=#444444
set t_Co=256 " 256 color mode
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/ "highlight everything after 81 characters

" Window
set laststatus=2 " always have a status line
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
set showtabline=2 " always show tab bar

" Mappings
let mapleader=","
cmap W! w !sudo tee % >/dev/null " sudo write this

" Syntax checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" vimtip#80 restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" vim-airline
" Set configuration options for the statusline plugin vim-airline.
" Use the powerline theme and optionally enable powerline symbols.
" To use the symbols , , , , , , and .in the statusline
" segments add the following to your .vimrc.before.local file:
" let g:airline_powerline_fonts=1
" If the previous symbols do not render for you then install a
" powerline enabled font.
let g:airline_theme = 'murmur' " 'powerlineish' is another choice
let g:airline_powerline_fonts = 1
if !exists('g:airline_powerline_fonts')
  " Use the default set of separators with a few customizations
  let g:airline_left_sep='›' " Slightly fancier than '>'
  let g:airline_right_sep='‹' " Slightly fancier than '<'
endif
set guifont=Liberation\ Mono\ for\ Powerline\ 10

" vim-markdown
let g:vim_markdown_folding_disabled=1

" Formatting
filetype on
filetype plugin on
"set smarttab " insert tabs on line start according to context
set paste
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head"
set autoindent " auto indentation
