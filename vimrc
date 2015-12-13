" My Beloved Vimrc file.
" Disable any distro specific upgrades
set nocompatible

" enable clipboard register
set clipboard=unnamed

" Needed for Vundle (a plugin manager)
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" My Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ngmy/vim-rubocop'
Plugin 'wookiehangover/jshint.vim'
Plugin 'scrooloose/nerdtree' 
Plugin 'scrooloose/syntastic'
Plugin 'rking/ag.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'airblade/vim-gitgutter'

" All Vundle plugins should be before this!
call vundle#end()
filetype plugin indent on

" Enable syntax highlighting
syntax on

" enabling hidden will allow the same window to be reused to switch between multiple files without saving them
" and keep the undo history for each file. If the computer crashes, the swap files will be preserved for later saving
" This is sometimes not enabled and instead split panes/windows are used instead
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporaril turn off highlighting. See the mapping of <C-L> below)
set hlsearch

" ============= Usability ================


" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" If no file-type specific indenting is enabled, just use the indenting inherent to the file
set autoindent

" Show cursor position on the last line as well as the line number
set ruler
set number

" Always show the status line
set laststatus=2

" Enable use of the mouse for all modes
set mouse=a

" Use visual bell which will flash on the screen instead of beeping when doing something wrong
set visualbell

" Quickly timeout on the keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" =============== Indentation ==================

" Indentation using hard tabs or softtabs of 2 spaces 
set shiftwidth=2
set tabstop=2
set shiftround
set expandtab
" =============== Mappings =====================

" Map <C-L> (redraw screen) to also turn off search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <C-T> :NERDTreeToggle<CR>
nnoremap <Space> :NERDTree %<CR>

" For easier window management 
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
nnoremap  <Up>     <C-w>k
nnoremap  <Down>   <C-w>j
nnoremap  <Left>   <C-w>h
nnoremap  <Right>  <C-w>l


" ============== Plugin stuff ==================
" For Markdown (Github flavored) 
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Making sure it picks up Greenhouse rubocop config
let g:vimrubocop_config = '/Users/gauthamchandra/development/greenhouse/.rubocop.yml'

" Make sure there isn't any annoying highlighting
let g:JSHintHighlightErrorLine = 0

" Some stuff to make Syntax checking more friendly
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
"

" For AG
let g:ag_working_path_mode="r"
