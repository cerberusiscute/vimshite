"only vimsettings
set nocompatible
"use pathogen which is a bundle manager that I have installed in the .vim
"folder already
execute pathogen#infect()
"file encoding stuff - always using utf-8
"set font
set guifont=Consolas
set encoding=utf-8
set fileencoding=utf-8
"set highlight search on
set hlsearch
nnoremap <silent> <leader>e :nohl<CR><C-l>
"make vim not mangle pasted stuffs
set paste
"If using a xterm-256color terminal (OS X 10.7+ and maybe ubuntu?)set the
"colorscheme. look in .vim/colors/for all the colorschemes installed.
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
set t_Co=256
colors wombat256mod
"set column 81 to show 80 column border to keep code organized
"set colorcolumn=81
"folding
set foldmethod=indent
set foldnestmax=5
set nofoldenable
set foldlevel=1
let mapleader='\'
"set guioptions
set guioptions-=L
set guioptions-=M
set guioptions-=r
set guioptions-=T
set guioptions-=a
"set neocomplete on
"let g:neocomplete#enable_at_startup=1
"random
set noshowmode
"set line numbers on and for print
set printoptions=number:y
"ViM gave me some crap for not having this so I put it in just for kicks and
"giggles
set modifiable
"highlight the current line... much better than you will expect
"set cursorline
"set noswapfile
set noswapfile
"set error crap
set noerrorbells
set visualbell
"if using GViMset the font to 12pt ProggyCleanTT. change it to whatever you
"want or delete this line.
"set guifont=ProggyCleanTT:h13
"turn on column and line number count at the bottom of the screen
set ruler
"turn on being able to backspace through the beginning of one line onto the
"line above it.
set backspace=indent,eol,start
"ignore the case when searching
set ignorecase
"when pasting from system clipboard press F9 to enter pastemode which will
"make pasting much easier. only available in inseert mode
set pastetoggle=<C-p>
"don't backup the file. this still creates a swap file. just save frequently
"OR you can delete this line.
set nobackup
"turn line numbers on. on the left side of the screen as usual in an IDE
set number
"when splitting a window, split the to the bottom of the current window
set splitbelow
"when vertically splitting a window, split to the right of the current window
set splitright
"press ctrl-n to open NERDTree (file manager)
map <C-f> :NERDTreeToggle<CR>
"turn syntax hilighting on
syntax enable
"turn linewrapping on
set wrap
"tbh don't really know what this does. It was recommended by several websites
set linebreak
"press '\\' then w to use easymotion forward or b for backward
let g:EasyMotion_leader_key = '\\'
"THE MAP PREFIX 'C' MEANS CTRL ON THE KEYBOARD THE LETTERS FOLLOWING IT ARE
"THE ACTUAL KEYS TO PRESS. PREFIX 'S' = SHIFT ON THE KEYBOARD
"'so' to source ~/.vimrc
map so :so ~\_vimrc<CR>
"move to split to the right of current window
map <C-j> <C-W><C-j>
nnoremap <Leader><Leader>o o<Esc>ko<Esc>o
nnoremap <Leader><Leader>oo o<Esc>ko
"move current split to new tab
map <S-t> <C-W>T
"move to split above current
map <C-k> <C-W><C-k>
"move to split left of current
map <C-h> <C-W><C-h>
"move to split right of current
map <C-l> <C-W><C-l>
"Leader + '=' key resize all splits to be equal size
nnoremap <Leader>= <C-w>=
"'sw' switchs windows
nnoremap wi <C-W><C-W> 
"no idea what this does. as far as i can tell, it does nothing.
map <C-z> <C-W><C-R>
"line 76 and 77 map 'Q' (S-q) to reformat a paragraph. haven't used it much
"yet. may find a use later
vmap Q gq
nmap Q gqap
"make line movement more natural using lines 81 and 82. trust this map. it
"helps with wrapped lines.
nnoremap j gj
nnoremap k gk
"eliminate the need to ':' into command mode. just press ';' and it will
"automatically be converted. removes 2 keystrokes to enter command mode
nnoremap ; :
"move to tab to the left
nnoremap <S-h> gT
"move to tab to the right
nnoremap <S-l> gt
"open new tab
nnoremap <C-t> :tabnew<CR>
"open new tab. keep this line
inoremap <C-t> <Esc>:tabnew<CR>
"map <<e' in insert mode to <ESC>
inoremap ,,e <Esc>
"update instead of full write
noremap <Leader>u <Esc>:up<CR>
"the rest of the lines are code completion
"set omnifunc=syntaxcomplete#Complete
"python from Powerline.vim importsetup as Powerline_setup
"python Powerline_setup()
"python del Powerline_setup
"set rtp+=usr/local/lib/python2.7/site-packages/Powerline/bindings/vim
set encoding=utf-8
set laststatus=2
let g:multi_cursor_start_key='<F7>'
"let g:Powerline_symbols = 'unicode'
"let g:syntastic_php_checkers = ['php']
"bind z to suspend
nnoremap z :suspend<CR>

function! Cc()
	set colorcolumn=81
endfunction

"custom vim func to find and replace all occurences
function! SANDR()
	call inputsave()
	let b:s=input('search: ')
	let b:r=input('replace: ')
	call inputrestore()
	execute '%s/' . b:s . '/' . b:r . '/geI'
endfunction

noremap <Leader>sr :call SANDR()<CR>
"spell check toggle

nnoremap <Leader>sp :setlocal spell! spelllang=en_us<CR>
nnoremap <Leader>nsp :setlocal nospell!<CR>
nnoremap <Leader>ab :call Alignby()<CR>

