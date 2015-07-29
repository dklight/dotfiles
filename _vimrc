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

Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-fugitive'

Plugin 'godlygeek/tabular'

Plugin 'plasticboy/vim-markdown'

Plugin 'vim-scripts/indenthtml.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" auto reload vimrc when editing it
autocmd! BufWritePost .vimrc source ~/.vimrc

"" User Interface
set number " need those line numbers
set mouse=a
set ttymouse=xterm2
set ruler " show the line/column number of the cursor position
set nowrap " don't wrap lines
set linebreak " break line for wrapping at end of a word
set tabstop=2 shiftwidth=2 " a tab is two spaces (or set this to 4)
set expandtab " use spaces, not tabs (optional)
set backspace=indent,eol,start " backspace through everything in insert mode
set autoread " auto read when file is changed from outside
set clipboard=unnamed " yank to the system register (*) by default
set hid " hide abandon buffers in order to not lose undo history

" remember more commands and search history
set history=10000


"" Searching
set showmatch " cursor shows matching ) and }
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ... unless they contain at least one capital letter

"" Colors
set term=xterm-256color
syntax enable
set background=dark " or light
colorscheme solarized " can't work with anything else
highlight LineNr ctermfg=darkgrey
set cursorline " highlight current line
set list " turn on invisible characters
set listchars=tab:▸\ ,trail:▝ " which characters to highlight
highlight NonText guifg=#444444
highlight SpecialKey guifg=#444444
set t_Co=256 " 256 color mode

" Window
set laststatus=2 " always have a status line
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
set showtabline=2 " always show tab bar

" Mappings
let mapleader=","
cmap W! w !sudo tee % >/dev/null " sudo write this
let g:pep8_map='<leader>8' " Run pep8
cmap w!! w !sudo tee % >/dev/null " for when we forget to use sudo to open/edit a file
nnoremap <leader>. :lcd %:p:h<CR> " Set working directory
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR> " Remove trailing whitespace on <leader>S


" Completion
" set wildmenu " enhanced command line completion
" set wildmode=full
" set wildignore+=*.o,*.obj,.bundle,coverage,doc,.DS_Store,_html,.git,*.rbc,*.class,.svn,vendor/gems/*,vendor/rails/*
" set complete=.,w,b,u,t " don't complete with included files (i)
" set foldmethod=manual " for super fast autocomplete
" set completeopt=menuone,longest,preview " don't select first item, follow typing in autocomplete
" set pumheight=6 " Keep a small completion window
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType c set omnifunc=ccomplete#Complete


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
set smarttab " insert tabs on line start according to context
set paste
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head"
set autoindent " auto indentation
