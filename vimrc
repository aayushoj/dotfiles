"Suggestions and future improvements {{{
"}}}

"NeoVim Separtation {{{
if has('nvim')
    let s:editor_root=expand("~/.config/nvim")
else
    let s:editor_root=expand("~/.vim")
endif
"}}}

"Plugins i use {{{
"Plugin 'SirVer/ultisnips' :--> snippets of code
"Plugin 'honza/vim-snippets' :--> snippets of code
"Plugin 'gmarik/Vundle.vim' :--> Plugin manager
"Plugin 'benmills/vimux'    :--> not used by me yet
"Plugin 'tpope/vim-fugitive' :-->git integration with vim
"Plugin 'rstacruz/sparkup'   :-->Zen coding
"Plugin 'scrooloose/nerdtree':-->file-manager for vim
"Plugin 'tpope/vim-surround' :-->changing brackets and tags efffectively
"Plugin 'kien/ctrlp.vim' :-->fuzzy file searcher for vim
"Plugin 'altercation/vim-colors-solarized' :-->
"Plugin 'bling/vim-airline'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'godlygeek/tabular'
"Plugin 'tomasr/molokai'
"Plugin 'flazz/vim-colorschemes'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'Anthony25/gnome-terminal-colors-solarized'
"Plugin 'othree/html5.vim'
"Plugin 'Valloric/YouCompleteMe'
"}}}

"  Mapping Leader and other issues----------{{{
"  These things are there as they are needed for plugin configurations or so i
"  believe
"set termencoding=utf-8
"set t_Co=256
"let mapleader="\" "suits me as i have been working with touch typing
map <space> <leader>
map <space><space> <leader><leader>
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
if has('nvim')
    if filereadable(expand("~/.config/nvim/vundles.vim"))
      source ~/.config/nvim/vundles.vim
    endif
else
    if filereadable(expand("~/.vim/vundles.vim"))
      source ~/.vim/vundles.vim
    endif
endif
" }}}

"set colorscheme{{{
"Kept it separate as most of people who will use my settings will care only
"about colorscheme
"hi Normal ctermbg=NONE
"hi Normal ctermfg=NONE
colo badwolf
"highlight NonText ctermbg=none
"colo jellybeans
"colo Tomorrow-Night-Eighties
"colo solarized
"}}}

"edit vimrc/zshrc and load vimrc bindings{{{

nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
if has('nvim')
    nnoremap <leader>ep :vsp ~/.config/nvim/vundles.vim<CR>
else
    nnoremap <leader>ep :vsp ~/.vim/vundles.vim<CR>
endif
nnoremap <leader>ei :vsp ~/.i3/config<CR>
"}}}

"move backup to /tmp{{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
"}}}

"Functions {{{

"toggle between number and relativenumber{{{
function! ToggleNumber()
    if(&relativenumber==  1)
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

"}}}

"My costumisations {{{
"set mouse=a "enable mouse
set mouse=nv
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
set vb

"code folding{{{
set foldenable              " enable folding
set foldlevelstart=10        " close all folds by default
set foldmethod=indent       " fold based on indent level
" }}}

"  Search settings {{{

set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set showmatch               " highlight matching [{{{()}}}]
set showcmd                 " show command in bottom bar

"}}}

"}}}

"Keymaps {{{

" Main Keymaps{{{

nnoremap <C-h> <C-w><C-h>
"nnoremap <space> za
" space open/closes folds earlier i did mistake of placing it with mapping
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-l> <C-w><C-l>
nnoremap <leader>h :nohlsearch<CR>
"Satisfied with it a lot,close to home row and '' is almost useless
"vnoremap '' <esc>
"inoremap '' <esc>
"nnoremap '' <esc>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>x "+x
nnoremap <leader>p "+p
nnoremap <leader>y "+y
vnoremap <leader>x "+x
vnoremap <leader>p "+p
vnoremap <leader>y "+y
"nnoremap ; :
"Sometimes ; may be useful also u will avoid using shift + ;
"nnoremap : ;
"nnoremap <leader>hs :sp<CR>
"nnoremap <leader>vs :vsp<CR>
nnoremap <leader>o o<esc>k
"nnoremap X v$x
"nnoremap Y v$y
"this should not be here
"nnoremap <Leader>he :read ~/codes/competitive/algos/head.cpp<CR>
"}}}

"These mappings are there to train my fingers to use my customised settings {{{

"inoremap <esc> <nop>
"vnoremap <esc> <nop>
"inoremap <Right> <nop>
"nnoremap <Right> <nop>
"inoremap <Left> <nop>
"inoremap <Up> <nop>
"inoremap <Down> <nop>

"nnoremap ;q nop<CR>
"nnoremap ;w nop<CR>

"nnoremap <Left> <nop>
"nnoremap <Up> <nop>
"nnoremap <Down> <nop>

"}}}

"}}}

" File specific settings {{{

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal  foldmethod=marker
    autocmd FileType vim setlocal  foldlevel=0
augroup END
" }}}

" Python configuration {{{
augroup filetype_python
    autocmd!
    autocmd FileType python set sw=4
    autocmd FileType python set ts=4
    autocmd FileType python set sts=4
augroup END
"}}}

"CPP Configuration {{{
"not working properly cannot figure it out
augroup filetype_CPP
    autocmd!
    "autocmd FileType cpp echom "Working!"
    autocmd FileType cpp let g:cwd=getcwd()
    "autocmd FileType cpp
                        "if g:cwd == '/home/aayush/codes/competitive'
                            "echo "put your code here"
                        "endif
augroup END
"}}}

"}}}

