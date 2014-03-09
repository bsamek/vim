" The basics
call pathogen#infect()      " Use pathogen
set nocompatible            " Use Vim, not Vi defaults
filetype plugin indent on   " Turn on filetype plugin and indent
syntax enable               " Turn on syntax highlighting
set autochdir               " Change to working directory on file open 
set textwidth=78            " Set textwidth to 78
let mapleader=","           " Set mapleader to ,
set wildmenu                " Use enhanced command-line completion

" Appearance
color molokai               " Set colorscheme
set guioptions-=m           " Turn off menu
set guioptions-=T           " Turn off toolbar
set guioptions-=r           " Turn off right-hand scrollbar
set guioptions-=L           " Turn off left-hand scrollbar

" Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Backup
set backup                  " Keep backups
set backupdir=~/.vimbak/backup/  " Set backup directory
set directory=~/.vimbak/tmp/     " Set swap directory

" Indentation
set expandtab               " Use spaces instead of tabs
set softtabstop=4           " Tabs 4 spaces
set shiftwidth=4            " Shift 4 spaces
set autoindent              " Auto indent lines

" Searching
set ignorecase              " Ignore case in search
set smartcase               " Unless uppercase in present
set incsearch               " Use incremental searching
set hlsearch                " Highlight search results

" Movement
set scrolloff=5             " Keep five lines around the cursor
set backspace=2             " Backspace over indent, EOL, and start
