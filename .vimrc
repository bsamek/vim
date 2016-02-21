" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'fatih/vim-go'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'joshdick/onedark.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'pelodelfuego/vim-swoop'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-ruby/vim-ruby'

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

" Configure trailing whitespace
let g:airline#extensions#whitespace#checks = [ 'indent', 'mixed-indent-file' ]

" Prevent preview buffer from appearing in vim-go
set completeopt=menuone


" Mappings

" Leader
let mapleader="\<Space>"

" Vundle
nnoremap <leader>pc :PluginClean<cr>
nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>ps :PluginSearch<cr>
nnoremap <leader>pu :PluginUpdate<cr>

" Plugins
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>u :GundoToggle<cr>

" Clipboard
nnoremap <leader>cp "+p
nnoremap <leader>cP "+P
vnoremap <leader>cd "+d
vnoremap <leader>cy "+y

" FZF
nnoremap <leader>bb :Buffers<cr>
nnoremap <leader>bc :BCommits<cr>
nnoremap <leader>bs :BLines<cr>
nnoremap <leader>f/ :History/<cr>
nnoremap <leader>f? :Helptags<cr>
nnoremap <leader>fc :Commits<cr>
nnoremap <leader>ff :GitFiles<cr>
nnoremap <leader>fh :History<cr>
nnoremap <leader>fl :Locate 
nnoremap <leader>fq :History:<cr>
nnoremap <leader>fs :Ag 

" Encryption
nnoremap <leader>j :Sedit<cr>
nnoremap <leader>d :%!gpg<cr>
nnoremap <leader>e :%!gpg -ear brian.samek@gmail.com<cr>

" Misc
nnoremap <leader>g :GoDef<cr>
nnoremap <leader>r :w<cr>:so %<cr>
nnoremap <leader>v V
nnoremap <leader>s :w<cr>
inoremap jk <esc>
