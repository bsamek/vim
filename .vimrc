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
Plugin 'SirVer/ultisnips'
Plugin 'Townk/vim-autoclose'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tmhedberg/SimpylFold'
Plugin 'joshdick/onedark.vim'

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
let g:onedark_termcolors=16
colorscheme onedark
set background=dark

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

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Prevent preview buffer from appearing in vim-go
set completeopt=menuone

" Mappings
let mapleader="\<Space>"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>/ :nohlsearch<cr>
nnoremap <leader>ac :PluginClean<cr>
nnoremap <leader>ai :PluginInstall<cr>
nnoremap <leader>as :PluginSearch<cr>
nnoremap <leader>au :PluginUpdate<cr>
nnoremap <leader>b :buf 
nnoremap <leader>g :GoDef<cr>
nnoremap <leader>j :tabnext<cr>
nnoremap <leader>l :e#<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>o <C-^>
nnoremap <leader>p "+p
nnoremap <leader>r :so %<cr>
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>u :GundoToggle<cr>
nnoremap <leader>v V
nnoremap <leader>w :w<CR>
nnoremap <leader>s :Ag! 
nnoremap <leader>z za
vnoremap <leader>d "+d
vnoremap <leader>p "+p
vnoremap <leader>y "+y

" vim-airline
let g:airline#extensions#whitespace#enabled = 0

" ctrlp
let g:ctrlp_extensions = ['tag']

" fold
set foldmethod=manual
set foldlevel=99
