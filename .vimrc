"" General
set number relativenumber	" Show line numbers
syntax on			" Turn on syntax highlighting
set cursorline			" Show current line
let &showbreak = '+++ '		" Wrap-broken line prefix
set showmatch			" Highlight matching brace
set spell			" Enable spell-checking
set visualbell			" Use visual bell (no beeping)

set colorcolumn=80		" Limit to 80 lines

set hlsearch			" Highlight all search results
set smartcase			" Enable smart-case search
set ignorecase			" Always case-insensitive
set incsearch			" Searches for strings incrementally
 
set autoindent			" Auto-indent new lines
set shiftwidth=2		" Number of auto-indent spaces
set smartindent			" Enable smart-indent
set smarttab			" Enable smart-tabs
set softtabstop=0		" Number of spaces per Tab

" Advanced
set ruler			" Show row and column ruler information
set undolevels=1000		" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set mouse=a

" UTF-8
set encoding=utf-8
set fileencoding=utf-8

""" Programming
" auto close brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

""" Statusline
set laststatus=2		" Enable Statusline
set statusline=	

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

set statusline=%#DiffAdd#\ %t\ %#StatusLine#	" Colored Filename
set statusline+=\ [%Y]				" File Type
set statusline+=[%{&fileencoding}]
set statusline+=%=				" Spacer
set statusline+=[ASCII=\%03.3b]			" ASCII Value
set statusline+=[Hex=\%02.2B]			" Hex Value
set statusline+=%#ErrorMsg#%m%r%#StatusLine#	" Red flags
set statusline+=[%l,%c]				" Position
set statusline+=[%p%%]				" Percentage of file
set statusline+=[%{strftime('%H:%M')}]\ 	" Time

""" Syntax Highlighting options
set t_Co=256

colorscheme gruvbox		" Fresh Colorscheme

" Comments in Italic
highlight Comment term=italic cterm=italic gui=italic

" VSCode-like Statusbar
highlight StatusLine ctermbg=white ctermfg=32 guibg=white guifg=#007ACC
