" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.

"  Mapping Leader and other issues----------{{{
let mapleader=","
filetype plugin indent on
set nocp
set backspace=indent,eol,start
"}}}

" source ~/.vimrc.before if it exists. {{{
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif
"}}}

"  Vundle Initialization {{{
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif
" }}}

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal  foldmethod=marker
    autocmd FileType vim setlocal  foldlevel=0
augroup END
" }}}

"set colorscheme{{{
colo badwolf
"}}}

"code folding{{{
set foldenable              " enable folding
set foldlevelstart=0        " close all folds by default
set foldmethod=indent       " fold based on indent level
nnoremap <space> za
" space open/closes folds earlier i did mistake of placing it with mapping
" }}}

"  Search {{{
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set showmatch               " highlight matching [{{{()}}}]
set showcmd                 " show command in bottom bar
"}}}

"edit vimrc/zshrc and load vimrc bindings{{{

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ep :vsp ~/.vim/vundles.vim<CR>
nnoremap <leader>ei :vsp ~/.i3/config<CR>
"}}}

"move backup to /tmp{{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
"}}}

"toggle between number and relativenumber{{{
function! ToggleNumber()
    if(&relativenumber  1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
"Changed mapping from F2 to F4 as now i use F2 to toggle menubar of terminal
nnoremap <F4> :call ToggleNumber()<CR>
"}}}

" strips trailing whitespace at the end of files.{{{
function! StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
"I have chosen a far key as it won't be used too often
nnoremap <F3> :call StripTrailingWhitespaces()<CR>
"}}}

"My costumisation started{{{
"set mouse=a "enable mouse
"I won't enable mouse for a good practice of vim motion commands
set shiftwidth=4
set expandtab
syntax on                   " syntax highlighting
set ai                      " autoindent not that AI(lol)
set softtabstop=4           " number of spaces in tab when editing
set tabstop=4               " number of visual spaces per TAB
set rnu
set cursorline              " highlight current line
filetype indent on          " load filetype-specific indent files
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to.
set vb
"}}}

" Keymaps{{{
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-l> <C-w><C-l>
nnoremap <leader><space> :nohlsearch<CR>
vnoremap jk <esc>
inoremap jk <esc>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>x "+x
nnoremap <leader>p "+p
nnoremap <leader>y "+y
vnoremap <leader>x "+x
vnoremap <leader>p "+p
vnoremap <leader>y "+y
"}}}

"These mappings are there to train my fingers to use my customised settings {{{
inoremap <esc> <nop>
vnoremap <esc> <nop>
inoremap <Right> <nop>
"nnoremap <Right> <nop>
inoremap <Left> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
cnoremap q nop<CR>
cnoremap w nop<CR>
"nnoremap <Left> <nop>
"nnoremap <Up> <nop>
"nnoremap <Down> <nop>
"}}}

" Python configuration {{{
augroup filetype_python
    autocmd!
    autocmd FileType python set sw=4
    autocmd FileType python set ts=4
    autocmd FileType python set sts=4
augroup END
"}}}
