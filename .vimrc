"-------------------------------
"- Author:        Njima1572
"- Created:       06/19/2020
"- Last Updated:  06/20/2020
"-------------------------------

"----- Refresh vimrc with <F5>
noremap <F5> :source ~/.vimrc<CR>

"----- Some basic vim stuff
set title
set number
set autoindent
set smartindent
set virtualedit=onemore
set scrolloff=999
set laststatus=2

set showcmd

set hlsearch
set wrapscan
noremap <Esc><Esc> :nohl<CR>

"----- Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\-\-


"----- Undo
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

"----- Setting <Space> as a leader key
let mapleader = " "

"----- Disable arrow keys
inoremap <Left> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Right> <Nop>

"----- Find
noremap F K

"----- Remap HJKL
noremap H ^
noremap J :tabp<CR>
noremap K :tabn<CR>
noremap L $

"----- Normal mode shortcut
imap jj <Esc>

"----- Save and quit
noremap <Leader><Leader> :w<CR>
noremap <Leader><Leader><Leader> :wq<CR>

"----- Shortcut for config files
noremap <Leader>. :tabe ~/.vimrc<CR>
noremap <Leader>b :tabe ~/.bashrc<CR>
noremap <Leader>i :tabe ~/.config/i3/config<CR>

"----- Keymapping for tabs
nmap <C-t> :tabe <C-d>
nmap <C-CR> :vsplit<CR>

"----- Scorll Faster
nmap <C-j> jjj
nmap <C-k> kkk

"----- gj gk mapping
noremap j gj
noremap k gk

"----- Line Start and line end 
nmap <Leader>h ^
nmap <Leader>l $

"----- Replace Undo and redo with g+-
noremap u g-
noremap <C-r> g+ 

"----- Bracket Completion
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap () ()
inoremap [] []
inoremap {<CR> {<CR>}<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap (<CR> (<CR>)<Esc>O

"----- Colors
hi Search ctermbg=LightMagenta
hi ErrorMsg guibg=Blue

