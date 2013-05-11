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

" Backup
set backup                  " Keep backups
set backupdir=~/.vimbak/backup/  " Set backup directory
set directory=~/.vimbak/tmp/     " Set swap directory

"Indentation
set expandtab               " Use spaces instead of tabs
set tabstop=4               " Tabs 4 spaces
set shiftwidth=4            " Shift 4 spaces
set autoindent              " Auto indent lines
