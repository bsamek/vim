" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'chriskempson/base16-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'easymotion/vim-easymotion'
Plugin 'fatih/vim-go'
Plugin 'godlygeek/tabular'
Plugin 'jiangmiao/auto-pairs'
Plugin 'justinmk/vim-sneak'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'mtth/scratch.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/denite.nvim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/neomru.vim'
Plugin 'sjl/gundo.vim'
Plugin 't9md/vim-choosewin'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-ruby/vim-ruby'
Plugin 'VundleVim/Vundle.vim'

" End Vundle
call vundle#end()

" Basics
filetype plugin indent on   " Turn on filetype plugin and indent
syntax enable               " Turn on syntax highlighting
set autochdir               " Change to working directory on file open
set textwidth=78            " Set textwidth to 78
set wildmenu                " Use enhanced command-line completion
set wildignorecase          " Don't use case for file/directory completion
set hidden                  " Hide buffers instead of closing them
set laststatus=2            " Always show status bar
set number

" Colorscheme
colorscheme base16-solarized-light
nnoremap <leader>cd :colorscheme base16-solarized-dark<cr>
nnoremap <leader>cl :colorscheme base16-solarized-light<cr>

" Backup
set backup                  " Keep backups
set backupdir=~/.vimbak/backup/  " Set backup directory
set directory=~/.vimbak/tmp/     " Set swap directory

" Searching
set ignorecase              " Ignore case in search
set smartcase               " Unless uppercase in present
set incsearch               " Use incremental searching
let g:ackprg="ag --vimgrep"

" Movement
set scrolloff=5             " Keep five lines around the cursor
set backspace=2             " Backspace over indent, EOL, and start
set autoindent              " Auto indent lines

" Custom scratch buffers for edit command
command! -bar -nargs=* Sedit call functions#ScratchEdit('edit', <q-args>)

" deoplete
let g:deoplete#enable_at_startup = 1

" Configure trailing whitespace
let g:airline#extensions#whitespace#checks = [ 'indent', 'mixed-indent-file' ]

" Prevent preview buffer from appearing in vim-go
set completeopt=menuone

" Enable goimports on save
let g:go_fmt_command = "goimports"

" Leader
let mapleader="\<Space>"

" Mappings
nnoremap  -  <Plug>(choosewin)
nnoremap <leader>0 :setlocal number!<cr>
nnoremap <leader>a :Gcd <bar> Ack! 
nnoremap <leader>b :Denite buffer<cr>
nnoremap <leader>c :nohlsearch<cr>
nnoremap <leader>d :%!gpg<cr>
nnoremap <leader>e :%!gpg -ear brian.samek@gmail.com<cr>
nnoremap <leader>f :Gcd <bar> :Denite file/rec<cr>
nnoremap <leader>gd :GoDoc<cr>
nnoremap <leader>gg :GoDef<cr>
nnoremap <leader>gi :GoImplements<cr>
nnoremap <leader>gl :GoLint<cr>
nnoremap <leader>gr :GoReferrers<cr>
nnoremap <leader>m :Denite file_mru<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>pc :PluginClean<cr>
nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>pu :PluginUpdate<cr>
nnoremap <leader>r :w<cr>:so %<cr>
nnoremap <leader>s :w<cr>
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>u :GundoToggle<cr>
