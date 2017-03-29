" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'easymotion/vim-easymotion'
Plugin 'fatih/vim-go'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'joshdick/onedark.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'pelodelfuego/vim-swoop'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-ruby/vim-ruby'
Plugin 'VundleVim/Vundle.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

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

" Enable goimports on save
let g:go_fmt_command = "goimports"

" Sessions
let g:session_autosave = 'no'
let g:session_autoload = 'no'

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers = ['python', 'flake8']

" Mappings

" Leader
let mapleader="\<Space>"

" Reload config
nnoremap <leader>c :w<cr>:so %<cr>

" Vundle
nnoremap <leader>pc :PluginClean<cr>
nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>ps :PluginSearch<cr>
nnoremap <leader>pu :PluginUpdate<cr>

" Colorschemes
nnoremap <leader>cd :colorscheme default<cr>

" Encryption
nnoremap <leader>d :%!gpg<cr>
nnoremap <leader>e :%!gpg -ear brian.samek@gmail.com<cr>

"Sessions
nnoremap <leader>ss :SaveSession 
nnoremap <leader>so :OpenSession 

" Golang
nnoremap <leader>gd :GoDef<cr>
nnoremap <leader>gl :GoLint<cr>

" Syntastic
nnoremap <leader>sc :SyntasticCheck<cr>
nnoremap <leader>si :SyntasticInfo<cr>
nnoremap <leader>st :SyntasticToggle<cr>

" Vimux
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>

" Misc
nnoremap <leader>a :Gcd <bar> Ack 
nnoremap <leader>n :NERDTreeFind<cr>
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>u :GundoToggle<cr>
nnoremap <leader>0 :setlocal number!<cr>
