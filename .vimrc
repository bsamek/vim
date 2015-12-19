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
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-sleuth'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'Townk/vim-autoclose'

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
set background=light         " Use light solarized
let g:solarized_termtrans = 1 " Fix for iTerm2
colorscheme solarized       " Use solarized

" Backup
set backup                  " Keep backups
set backupdir=~/.vimbak/backup/  " Set backup directory
set directory=~/.vimbak/tmp/     " Set swap directory

" Searching
set ignorecase              " Ignore case in search
set smartcase               " Unless uppercase in present
set incsearch               " Use incremental searching
set hlsearch                " Highlight search results

" Movement
set scrolloff=5             " Keep five lines around the cursor
set backspace=2             " Backspace over indent, EOL, and start
set autoindent              " Auto indent lines

" Custom scratch buffers for edit command
command! -bar -nargs=* Sedit call functions#ScratchEdit('edit', <q-args>)

" Mappings
inoremap jj <esc>
inoremap jk <esc>

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Prevent preview buffer from appearing in vim-go
set completeopt=menuone

" Syntastic recommended defaults
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Leader
let mapleader="\<Space>"

" Window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" General mappings
nnoremap <leader>ac :PluginClean<cr>
nnoremap <leader>ai :PluginInstall<cr>
nnoremap <leader>as :PluginSearch<cr>
nnoremap <leader>au :PluginUpdate<cr>
nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader>b :buf 
vmap <leader>d "+d
nnoremap <leader>g :GoDef<cr>
nnoremap <leader>j :tabnext<cr>
nnoremap <leader>l :e#<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>o <C-^>
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
nnoremap <leader>s :Ag! 
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>u :GundoToggle<cr>
nnoremap <leader>v V
nnoremap <leader>w :w<CR>
vmap <leader>y "+y

" vim-airline
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#syntastic#enabled = 1
