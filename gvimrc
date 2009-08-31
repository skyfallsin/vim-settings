set go-=T
set lines=100
set columns=120
set nocompatible
set nu
macmenu &File.New\ Tab key=<nop> 
macmenu &File.New\ Tab key=<D-y>
nnoremap <D-t> :FuzzyFinderTextMate<CR>
nnoremap <D-r> :MiniBufExplorer<CR>
nnoremap <D-e> :NERDTreeToggle<CR>
colorscheme tutticolori 
set transparency=2 

let g:fuzzy_ignore = "*.log;*.png;*.jpg;*.gif;vendor/**;coverage/**;tmp/**"
let g:fuzzy_matching_limit = 10


let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
" set gfn=ProFontWindows:h12
 set gfn=Inconsolata:h16
"set gfn=Consolas:h14
let NERDTreeIgnore=['\.beam']

augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
	autocmd FileType erl, hrl set ts=2 sw=2 sts=2 et 
augroup END

set ignorecase
set smartcase

set wildmenu
set wildmode=list:longest
"set shortmess=at

set history=1000
set hidden
set title
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set ruler

"set incsearch

map -a  :call SyntaxAttr()<CR>
set tabstop=2

" ease of use keyboard mappings (why do I care about top/bottom of screen?)
map H ^
map L $

map <C-a> :shell<CR>
map <C-l> :ruby finder.rescan!<CR>

" buffer switching/management, might as well use those keys for something useful
"map <Right> :bnext<CR>
"imap <Right> <ESC>:bnext<CR>
"map <Left> :bprev<CR>
"imap <Left> <ESC>:bprev<CR>
"map <Del> :bd<CR>

" get rid of stupid scrollbar/menu/tabs/etc
set guioptions=a

" don't need /g after :s or :g
set gdefault

" i prefer this to visualbell
set noerrorbells


" Hide the mouse pointer while typing
set mousehide

set wrap
set linebreak

