" Vundle setup
set nocompatible
set encoding=utf-8
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'easymotion/vim-easymotion'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'justinmk/vim-sneak'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-airline/vim-airline'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-rooter'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'neoclide/coc.nvim'
Plugin 'scrooloose/syntastic'
Plugin 'jremmen/vim-ripgrep'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mhinz/vim-signify'

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
let mapleader="\<Space>"

" Reload config
nnoremap <leader>r :w<cr>:so %<cr>

" Vundle
nnoremap <leader>pc :PluginClean<cr>
nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>ps :PluginSearch<cr>
nnoremap <leader>pu :PluginUpdate<cr>

" Golang
nnoremap <leader>gd :GoDoc<cr>
nnoremap <leader>gg :GoDef<cr>
nnoremap <leader>gl :GoLint<cr>
nnoremap <leader>gi :GoImplements<cr>
nnoremap <leader>gr :GoReferrers<cr>

" Misc
nnoremap <leader>s :Rg
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>0 :setlocal number!<cr>


" coc.nvim config from example file in GitHub repo

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" vim-airline
let g:airline#extensions#coc#enabled = 1
