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
Plugin 'bilalq/lite-dfm'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'easymotion/vim-easymotion'
Plugin 'fatih/vim-go'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'joshdick/onedark.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-startify'
Plugin 'pangloss/vim-javascript'
Plugin 'pelodelfuego/vim-swoop'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
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

" Ag searches from git root
let g:ag_working_path_mode='r'

" Enable goimports on save
let g:go_fmt_command = "goimports"

" Startify
let g:startify_session_dir = '~/.vimsessions'

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers = ['python', 'flake8']

" Mappings

" Leader
let mapleader="\<Space>"

" Reload config
nnoremap <leader>r :w<cr>:so %<cr>

" Vundle
nnoremap <leader>pc :PluginClean<cr>
nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>ps :PluginSearch<cr>
nnoremap <leader>pu :PluginUpdate<cr>

" Plugins
nnoremap <leader>a :Ag 
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>u :GundoToggle<cr>
nnoremap <leader>z :LiteDFMToggle<cr>

" Colorschemes
nnoremap <leader>cd :colorscheme default<cr>
nnoremap <leader>co :colorscheme onedark<cr>

" Encryption
nnoremap <leader>d :%!gpg<cr>
nnoremap <leader>e :%!gpg -ear brian.samek@gmail.com<cr>

" Syntax
nnoremap <leader>gd :GoDef<cr>
nnoremap <leader>gl :GoLint<cr>
nnoremap <leader>sc :SyntasticCheck<cr>
nnoremap <leader>si :SyntasticInfo<cr>
nnoremap <leader>st :SyntasticToggle<cr>
