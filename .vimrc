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
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'justinmk/vim-sneak'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'mtth/scratch.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'pelodelfuego/vim-swoop'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 't9md/vim-choosewin'
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
set guioptions=Ace
set guifont="Source Code Pro:h11"
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

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers = ['python', 'flake8']
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_go_checkers = ['go', 'golint']

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

" Encryption
nnoremap <leader>d :%!gpg<cr>
nnoremap <leader>e :%!gpg -ear brian.samek@gmail.com<cr>

" Golang
nnoremap <leader>gd :GoDoc<cr>
nnoremap <leader>gg :GoDef<cr>
nnoremap <leader>gl :GoLint<cr>
nnoremap <leader>gi :GoImplements<cr>
nnoremap <leader>gr :GoReferrers<cr>

" YCM
nnoremap <leader>jc :YcmCompleter GoToDeclaration<cr>
nnoremap <leader>jd :YcmCompleter GoToDefinition<cr>
nnoremap <leader>jg :YcmCompleter GoTo<cr>
nnoremap <leader>jr :YcmCompleter GoToReferences<cr>
nnoremap <leader>ji :YcmCompleter GoToImplementation<cr>
nnoremap <leader>jd :YcmCompleter GetDoc<cr>

" Syntastic
nnoremap <leader>sc :SyntasticCheck<cr>
nnoremap <leader>si :SyntasticInfo<cr>
nnoremap <leader>st :SyntasticToggle<cr>

" CtrlP
nmap <leader>f :CtrlPMixed<cr>
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>m :CtrlPMRU<cr>
nmap <leader>q :CtrlPQuickfix<cr>
let g:ctrlp_extensions = ['mixed', 'quickfix', 'line']

" Misc
nnoremap <leader>a :Gcd <bar> Ack! 
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>u :GundoToggle<cr>
nnoremap <leader>0 :setlocal number!<cr>
nmap  -  <Plug>(choosewin)
