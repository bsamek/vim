" Vundle setup
set nocompatible
set encoding=utf-8
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-rooter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'easymotion/vim-easymotion'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jremmen/vim-ripgrep'
Plugin 'justinmk/vim-sneak'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'shime/vim-livedown'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-airline/vim-airline'
Plugin 'ycm-core/YouCompleteMe'

" End Vundle
call vundle#end()

" The basics
filetype plugin indent on   " Turn on filetype plugin and indent
syntax enable               " Turn on syntax highlighting
set autochdir               " Change to working directory on file open
set wildmenu                " Use enhanced command-line completion
set wildignorecase          " Don't use case for file/directory completion
set hidden                  " Hide buffers instead of closing them
set laststatus=2            " Always show status bar
set guioptions=Ace
set number

" Searching
set ignorecase              " Ignore case in search
set smartcase               " Unless uppercase in present
set incsearch               " Use incremental searching
let g:rg_derive_root=1

" Movement
set scrolloff=5             " Keep five lines around the cursor
set backspace=2             " Backspace over indent, EOL, and start
set autoindent              " Auto indent lines

" Configure trailing whitespace
let g:airline#extensions#whitespace#checks = [ 'indent', 'mixed-indent-file' ]

" Prevent preview buffer from appearing in vim-go
set completeopt=menuone

" Enable goimports on save
let g:go_fmt_command = "goimports"

" Mappings

" Leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" Reload config
nnoremap <leader>r :w<cr>:so %<cr>

" Vundle
nnoremap <leader>pc :PluginClean<cr>
nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>ps :PluginSearch<cr>
nnoremap <leader>pu :PluginUpdate<cr>

" YCM
nnoremap <leader>jc :YcmCompleter GoToDeclaration<cr>
nnoremap <leader>jd :YcmCompleter GoToDefinition<cr>
nnoremap <leader>jg :YcmCompleter GoTo<cr>
nnoremap <leader>jr :YcmCompleter GoToReferences<cr>
nnoremap <leader>ji :YcmCompleter GoToImplementation<cr>
nnoremap <leader>j? :YcmCompleter GetDoc<cr>"

" Golang
nnoremap <leader>gd :GoDoc<cr>
nnoremap <leader>gg :GoDef<cr>
nnoremap <leader>gl :GoLint<cr>
nnoremap <leader>gi :GoImplements<cr>
nnoremap <leader>gr :GoReferrers<cr>

" CtrlP
nmap <leader>f :CtrlPMixed<cr>
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>m :CtrlPMRU<cr>
nmap <leader>q :CtrlPQuickfix<cr>
let g:ctrlp_extensions = ['mixed', 'quickfix', 'line']
let g:ctrlp_show_hidden = 1

" Misc
nnoremap <leader>s :Rg 
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>0 :setlocal number!<cr>

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
