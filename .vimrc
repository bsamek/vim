" Vundle setup
set nocompatible
filetype off
if has("gui_win32")
  set rtp+=~/vimfiles/bundle/Vundle.vim
else
  set rtp+=~/.vim/bundle/Vundle.vim
endif
call vundle#begin()

" Vundle Plugins
Plugin 'Lokaltog/vim-easymotion'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'benmills/vimux'
Plugin 'bling/vim-airline'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rking/ag.vim'
Plugin 'fatih/vim-go'

" End Vundle
call vundle#end()

" The basics
filetype plugin indent on   " Turn on filetype plugin and indent
syntax enable               " Turn on syntax highlighting
set autochdir               " Change to working directory on file open
set textwidth=78            " Set textwidth to 78
set wildmenu                " Use enhanced command-line completion
set wildignorecase          " Don't use case for file/directory completion
set hidden                  " Hide buffers instead of closing them

" Appearance
set guioptions-=m           " Turn off menu
set guioptions-=T           " Turn off toolbar
set guioptions-=r           " Turn off right-hand scrollbar
set guioptions-=L           " Turn off left-hand scrollbar
set laststatus=2            " Always show status bar

" Font
colorscheme solarized       " Use solarized
set background=dark         " Use dark solarized

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 13
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

" Custom scratch buffers for edit command
command! -bar -nargs=* Sedit call functions#ScratchEdit('edit', <q-args>)

" Mappings
inoremap jj <esc>
inoremap jk <esc>

" Leader
let mapleader="\<Space>"

" Window movement
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" General mappings
nnoremap <leader>ac :PluginClean<cr>
nnoremap <leader>ai :PluginInstall<cr>
nnoremap <leader>as :PluginSearch<cr>
nnoremap <leader>au :PluginUpdate<cr>
nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader>b :buf 
vmap <leader>d "+d
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>o :CtrlP<CR>
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
nnoremap <leader>r :w<cr>:call VimuxRunLastCommand()<cr>
nnoremap <leader>s :Ag! 
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>u :GundoToggle<cr>
nnoremap <leader>v V
nnoremap <leader>w :w<CR>
vmap <leader>y "+y

" ctrlp
let g:ctrlp_extensions = ['buffertag', 'line', 'changes']

" vim-airline
let g:airline_detect_whitespace=0
