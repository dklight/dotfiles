call pathogen#infect() " load pathogen
set nocompatible " choose no compatibility with legacy vi
set encoding=utf-8 " sensible encoding
set showcmd " display incomplete commands
set shell=zsh

" auto reload vimrc when editing it
autocmd! BufWritePost .vimrc source ~/.vimrc

"" User Interface
filetype plugin indent on " load file type plugins + indentation
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

" omni completion
au FileType python     setl omnifunc=pythoncomplete#Complete
au FileType ruby       setl omnifunc=rubycomplete#Complete
au FileType javascript setl omnifunc=javascriptcomplete#CompleteJS
au FileType html       setl omnifunc=htmlcomplete#CompleteTags
au FileType css        setl omnifunc=csscomplete#CompleteCSS
au FileType xml        setl omnifunc=xmlcomplete#CompleteTags

autocmd Filetype *
  \ if &omnifunc == "" |
  \   setl omnifunc=syntaxcomplete#Complete |
  \ endif

" decent completion behaviour
au CursorMovedI * if pumvisible() == 0|pclose|endif
au InsertLeave  * if pumvisible() == 0|pclose|endif
set completeopt+=longest

augroup vimrcEx
" Clear all autocmds in the group
  autocmd!
  autocmd FileType text setlocal textwidth=78
  " Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" |
    \ endif


" Indent p tags
  autocmd FileType html,eruby if g:html_indent_tags !~ '\\|p\>' | let g:html_indent_tags .= '\|p\|li\|dt\|dd' | endif
augroup END

"" Searching
set showmatch " cursor shows matching ) and }
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ... unless they contain at least one capital letter
set wildmenu " enhanced command line completion
set wildignore+=*.o,*.obj,.bundle,coverage,doc,.DS_Store,_html,.git,*.rbc,*.class,.svn,vendor/gems/*,vendor/rails/*
set complete=.,w,b,u,t " don't complete with included files (i)
set foldmethod=manual " for super fast autocomplete

" Formatting
set autoindent " auto indentation
set copyindent " copy the previous indentation on autoindenting
set smarttab " insert tabs on line start according to context
set paste

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
" set cmdheight=2 " number of lines for the command line
set laststatus=2 " always have a status line
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
set showtabline=2 " always show tab bar

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
