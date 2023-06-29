"""""""""""""""""""""""""" VIM CONFIG FILE: """"""""""""""""""""""""""""

syntax on                           " enable syntax "
scriptencoding utf-8
language en_US.utf-8                " Use English as default "
filetype plugin on
filetype plugin indent on
set autoread
set confirm                         " Ask for confirmation - unsaved or read-only files "
set encoding=utf-8
set expandtab
set history=1000
" enable highlight search pattern, using the forward slash to help look for
" multiple patterns of the same characters."
set hlsearch
set ignorecase                      " enable smartcase search sensitivity "
set incsearch
set mouse=a                         " enable mouse support "
set nocompatible                    " Enter the current millenium by not using vi "
set noerrorbells
set nobackup
set nowrap
set number                          " enable line numbers "
set numberwidth=1
set relativenumber
set smartcase
set scrolloff=10
set showcmd
set showmode
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2
set t_vb=
set termguicolors
" set vim colorscheme "
set background                      =light
colorscheme slate
" Show hostname, full path of file and last-mod time on the window title. The
" meaning of the format str for strftime can be found in
" http://man7.org/linux/man-pages/man3/strftime.3.html. The function to get
" lastmod time is drawn from https://stackoverflow.com/q/8426736/6064933
set title
set titlestring=
set titlestring+=%(%{hostname()}\ \ %)
set titlestring+=%(%{expand('%:p')}\ \ %)
set titlestring+=%{strftime('%Y-%m-%d\ %H:%M',getftime(expand('%')))}
set visualbell

""""""""""""""""""""""""""" FORMATTING EDITING: """"""""""""""""""""""""""

" autoindent:   autoindent in new line
set autoindent
set completeopt+=menuone            " Show menu, even if only one item *Completion behaviour "
set completeopt-=preview            " Disable the preview window *Completion behaviour "
" expandtab:    when on use space intead of tab
set expandtab
set foldenable                      " code folding "
set foldlevelstart                  =10
set foldmethod                      =syntax
" shiftwidth:   determines the amount of whitespace to add in normal mode
set shiftwidth                      =4
set showmatch                       " show te matching part of pairs [] {} and () "
" softtabstop:  fine tunes the amount of whitespace to be added
set softtabstop                     =4
" textwidth:    text wrap width
set textwidth                       =79
" tabstop:      width of tab character
set tabstop                         =4

"""""""""""""""""""""""""" FINDING FILES: """""""""""""""""""""""""""""""""

" Search down into subfolders "
" Provides tab-completion for all file-related tasks "
set path+=**
" Display all matching files when we tab complete "
set wildmenu
set wildmode=list:longest,full
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.cache
set wildignore+=*.o,*.obj,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.pyc
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.pdf

"""""""""""""""""""""""""" FILE BROWSING: """"""""""""""""""""""""""""""""""

" Tweaks for browsing "
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" Now we can: "
" - :edit a folder to open a file browser "
" - <CR>\v\t to open in an h-split\v-split\tab "
" - check |netrw-browse-maps| for more mappings "

""""""""""""""""""""""""""" KEY MAPPINGS: """""""""""""""""""""""""""""""""

" Allows you to open builtin file explorer via ctrl + b "
" in both normal mode and insert mode, super helpful! "
inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
" Set leader key to spacebar
let mapleader = " "
nnoremap <Leader>src :so .vimrc<CR>
nnoremap <Leader>cl :close<CR>
nnoremap <Leader>q :q<CR>
" Quickly save/exit files "
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq!<CR>
" Quickly navigate between tabs/windows
nnoremap <Leader>tw :tabnew<CR>
nnoremap <Leader>to :tabonly<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>tf :tabfirst<CR>
nnoremap <Leader>tl :tablast<CR>
nnoremap <Leader>tp :tabprev<CR>
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>ws :split<CR>
nnoremap <Leader>wv :vsplit<CR>noremap <Leader>src :so .vimrc<CR>
