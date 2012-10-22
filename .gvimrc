 
" ----------------------------------------------------------------------------------------
" VIM Settings
"
" Bill Russell
"
" ----------------------------------------------------------------------------------------

" ----------------------------------------------------------------------------------------
" General options
" ----------------------------------------------------------------------------------------
set nocompatible

filetype plugin indent on
set autoread       "Set to auto read when a file is changed from the outside
set ruler
set nobackup
set noswapfile
set hlsearch       " Switch on search pattern highlighting.
set nowrap         " Turn the word wrapping feature off
set number
set smartcase      " Ignore the case when doing a search unless you put capital letters in the
set ignorecase     " search in which case it will pay attention to the case
set ts=3
set noerrorbells
set novisualbell
set shiftround     " when at 3 spaces, go to next rounded location
set scrolljump=5   " Jump 5 lines when running out of the screen
set autochdir
set backspace=indent,eol,start    " allow backspacing over everything in insert mode
set showmatch                     " highlight matching braces
set list listchars=tab:»·,trail:· " highlight tabs and trailing spaces

" GUI options
" ----------------------------------------------------------------------------------------
set lines=50
set columns=130
set guioptions+=ab
set guioptions-=T   " get rid of toolbar
set showtabline=1

" ----------------------------------------------------------------------------------------
" Color options
" ----------------------------------------------------------------------------------------
:syntax enable        " Switch on syntax highlighting if it wasn't on yet.
":colorscheme desert   " Set the main color scheme
colorscheme solarized  " Set the main color scheme
set background=dark
"set font based on window manager"
if has("gui_athena")
   set guifont=Fixed
elseif has("gui_gnome")
   set guifont=Terminus\ 10
elseif has("gui_gtk2")
   set guifont=Monospace\ 14
elseif has("gui_motif")
   set guifont=Fixed
elseif has("gui_win32")
   set guifont=Lucida_Sans_Typewriter:h10:cDEFAULT
endif

" ----------------------------------------------------------------------------------------
" NERD Tree Options
" ----------------------------------------------------------------------------------------
let NERDTreeWinPos = 1
let NERDTreeWinSize = 30
let NERDTreeShowHidden=1

" ----------------------------------------------------------------------------------------
" Key mappings
" ----------------------------------------------------------------------------------------
map <leader>w :botright cwindow<CR>
" Use Shift-Enter to generate Escape (exit insert mode)
:inoremap <S-CR> <Esc>
" Turn off the search highlights and clear the command line
nnoremap <CR> :nohlsearch<CR>/<BS><CR>

" Go to next and previous items in list
nnoremap <c-kPlus>  :cnext<CR>
nnoremap <c-kMinus> :cprev<CR>
" Search for the word under the cursor with the F3 button
nnoremap <F3> :execute "noautocmd vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" Toggle between head/body
nnoremap <F6> :A<CR>
" Toggle the tag list sidebar
nnoremap <silent> <F8> :TlistToggle<CR>
" Remove trailing whitespace
nnoremap <F9> :%s/\s\+$//e<CR>
" Remove those pesky ^M characters
nnoremap <Leader><F9> :%s/[ \t\r]\+$//e<CR>
" Toggle QuickFix Window
nnoremap <silent> <F11> :cw<CR>
" Toggle Nerd Tree
nnoremap <silent> <F12> :NERDTreeToggle<CR>
" Move between open tabs
nnoremap <silent> <C-n> :tabnext<CR>
nnoremap <silent> <C-p> :tabprevious<CR>
" List open buffers
nnoremap <F5> :buffers<CR>:buffer<Space>
" Delete open buffers except for the one where the cursor lives
nnoremap <F2> :bufdo bdelete<CR>
" Enter vimgrep when in command mode
:cmap <F4> vimgrep
" ----------------------------------------------------------------------------------------
" Pathogen functions
" ----------------------------------------------------------------------------------------
call pathogen#infect()
call pathogen#helptags()
