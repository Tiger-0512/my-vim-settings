"=====================================
"               Plugin
"=====================================
call plug#begin()
    " A file system explorer for the Vim editor
    Plug 'preservim/nerdtree'

    " Make NERDTree feel like a true panel, independent of tabs
    Plug 'jistr/vim-nerdtree-tabs'

    " A plugin of NERDTree showing git status flags
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " Fonts with a high number of glyphs
    Plug 'ryanoasis/vim-devicons'

    " Auto Bracket
    Plug 'Raimondi/delimitMate'

    " Change Bracket by using shortcuts
    Plug 'tpope/vim-surround'

    " Use gcc to comment out a line, gc to comment out the target of a motion
    Plug 'tpope/vim-commentary'
call plug#end()


"=====================================
"               Basic
"=====================================
" Encoding
set encoding=UTF-8

" Line Number
set number

" Tab to Space
set expandtab
set smarttab

" Indent
set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Highlight Current Row
autocmd ColorScheme * highlight LineNr ctermfg=12
highlight CursorLineNr ctermbg=4 ctermfg=0
set cursorline
highlight clear CursorLine

" Search Option
set hlsearch
set ignorecase
set smartcase

" Key Binding
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>
" Go Beggining of a Line in Insert Mode
imap <C-i> <C-o>^
" Go End of a Line in Insert Mode
imap <C-a> <C-o>$

" Key Remupping
" ; to :
nnoremap; :
" Use Enter in Normal Mode
nnoremap <CR> A<CR><ESC>


"=====================================
"               NERDTree
"=====================================
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Show Hidden Files
let NERDTreeShowHidden = 1

" NERDTree Tabs Settings
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_focus_on_files = 1

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


"=====================================
"               Filetype
"=====================================
filetype plugin indent on
