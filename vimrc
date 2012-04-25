call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"Powerline settings
let g:Powerline_symbols = 'fancy'
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'

"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set nowrap      "dont wrap lines
set linebreak   "wrap lines at convenient points

"indent settings
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

"display tabs and trailing spaces

set formatoptions-=o "dont continue comments when pushing o/O

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"tell the term has 256 colors
set t_Co=256

"hide buffers when not displayed
set hidden

"dont load csapprox if we no gui support - silences an annoying warning
if !has("gui")
  let g:CSApprox_loaded = 1
endif

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>


nnoremap tt :NERDTreeToggle<cr>
nnoremap <c-k> :Bclose!<cr>

"mark syntax errors with :signs
let g:syntastic_enable_signs=1

"visual search mappings
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

colorscheme inkpot
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set nu "Отображать номер астрок
set sw=2 "Заменяет TAB на 2 пробела
set sts=2 "Аналогично, но в случае автоотступа
set guifont="Consolas 12"
if has('mac')
set guifont=Consolas:h14
endif
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  setglobal fileencoding=utf-8
  set fileencodings=utf-8,cp1251,koi8-r,latin1
  set fileformats=unix,unix,mac
endif
set keymap=russian-jcukenwin
set iskeyword=@,48-57,_,192-255
set iminsert=0
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
set sessionoptions+=unix
let Tlist_Show_One_File = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let NERDSpaceDelims = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#1F1F28 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#22222B ctermbg=4
set backup
set backupdir=/tmp
set dir=/tmp
if has('win32')
  set backupdir=c:\tmp
  set dir=c:\tmp
endif
set tags=./tags,tags
set guioptions-=L
let NERDTreeQuitOnOpen = 1
let g:EasyMotion_leader_key = 'm' 
set columns=100 
map <D-j> :LustyJuggler<CR>
au! BufRead,BufNewFile *.json set filetype=json foldmethod=syntax 
au! BufRead,BufNewFile vim_bundles set filetype=ruby
set undodir=~/.undo
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
let mapleader = ","
set completeopt=longest,menuone
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*  " Linux/MacOSX
set wildignore+=.git\*,.hg\*,.svn\*        " Windows
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_height = 20
let g:ctrlp_switch_buffer = 2
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_map = '<D-]>'
let g:ctrlp_use_caching = 0
" let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$',
      \ 'file': '\.exe$\|\.so$\|\.dll$',
      \ }

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
