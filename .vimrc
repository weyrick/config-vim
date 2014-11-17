set guifont=Inconsolata\ for\ Powerline:h16

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('$HOME/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Add or remove your Bundles here:
NeoBundle 'kien/ctrlp.vim'
"let g:ctrlp_map = '<C-D>'
nmap ; :CtrlPBuffer<CR>
nnoremap <leader>. :CtrlPTag<cr>
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 1
let g:ctrlp_switch_buffer = 0

NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'mhinz/vim-signify' " Like gitgutter, but extended and supports other SCM
"let g:signify_update_on_bufenter = 0
"let g:signify_update_on_focusgained = 1

NeoBundle 'mtth/locate.vim'
NeoBundle 'junegunn/vim-emoji'
silent! if emoji#available()
  let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
  let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
  let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
  let g:gitgutter_sign_modified_removed = emoji#for('collision')
endif

"NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
"NeoBundleLazy 'pangloss/vim-javascript', {'autoload':{'filetypes':['javascript']}}
"NeoBundleLazy 'marijnh/tern_for_vim', {'autoload':{'filetypes':['javascript']}}
"NeoBundleLazy 'othree/javascript-libraries-syntax.vim', {'autoload':{'filetypes':['javascript']}}
"NeoBundleLazy 'digitaltoad/vim-jade', {'autoload':{'filetypes':['javascript']}}
"NeoBundleLazy 'moll/vim-node', {'autoload':{'filetypes':['javascript']}}
"NeoBundleLazy 'bigfish/vim-js-context-coloring', {'autoload':{'filetypes':['javascript']}}
"NeoBundle 'mohitleo9/vim-fidget',{
"      \ 'build' : {
"      \    'unix' : 'npm install -g',
"      \    'mac' : 'npm install -g',
"      \ },
"  \} 

NeoBundle 'scrooloose/nerdtree'
nmap \e :NERDTreeToggle<CR>

NeoBundle 'ervandew/supertab'

NeoBundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#whitespace#enabled = 1

"NeoBundle 'justinmk/vim-sneak' " Normal mode binding s{char}{char} searching
"let g:sneak#streak = 1

NeoBundle 'jaxbot/semantic-highlight.vim'
NeoBundle 'ivyl/vim-bling' " Adds blinking to search
let g:bling_count = 5

"NeoBundle 'mbbill/undotree' " Adds complete undotree
"nnoremap \u :UndotreeToggle<CR>
"if has("persistent_undo")
"  set undodir='~/.cache/vimundo/'
"  set undofile
"endif

NeoBundle 'majutsushi/tagbar' " \g to open ctags tagbar
nmap \g :TagbarToggle<CR>


NeoBundle 'sheerun/vim-polyglot'

NeoBundleLazy 'tpope/vim-markdown', {'autoload':{'filetypes':['markdown']}}

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
     \ }
NeoBundle 'Shougo/unite.vim'

NeoBundle 'rizzatti/dash.vim'

" NeoComplete requires OS X build with: brew install macvim --with-cscope --with-lua --HEAD
NeoBundle 'Shougo/neocomplete'
if filereadable($VIMRUNTIME . "/neocomplete_config.vim")
  source $VIMRUNTIME/macros/matchit.vim
endif
NeoBundle 'm2mdas/phpcomplete-extended'
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:neocomplete#enable_at_startup = 0

NeoBundleLazy 'fatih/vim-go', {'autoload':{'filetypes':['go']}}

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"""""""""""""""""""" GLOBAL
set background=dark
set relativenumber
set number
set mouse=a
let mapleader=","
set t_Co=256
syntax on
set encoding=utf-8
set hidden
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftround
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak
set title
set visualbell
set noerrorbells
exec "set listchars=tab:⧽⧽,trail:⸰,nbsp:⸰"
set list
set ttyfast
set nocompatible
"set backup
"set backupdir=~/.cache/vim
set noswapfile
set fileformats=unix,dos,mac
set laststatus=2
set expandtab
set softtabstop=4 tabstop=4 shiftwidth=4
set ruler

let g:jellybeans_background_color_256 = 232
colorscheme jellybeans


" Make Columns stand out
" highlight ColorColumn ctermbg=17
" call matchadd('ColorColumn', '\%81v', 100)
" call matchadd('ColorColumn', '\%101v', 100)

" Make comments italic
highlight Comment cterm=italic

"""""""""""""""""""" FILES SPECIFIC

au bufNewFile *.html 0r ~/.vim/templates/html.txt
au BufRead,BufNewFile *.jsm setfiletype javascript
au BufRead,BufNewFile *.xul setfiletype xml
au BufRead,BufNewFile *.md set ft=markdown
au BufRead,BufNewFile *.json set ft=json

autocmd filetype html,xml set listchars-=tab:>.
nnoremap <leader>j :%!jq .<CR>
nnoremap <leader>b :%!xxd<CR>

autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

""""""""""""""" pastetoggle
set pastetoggle=<F3>

"Remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>''

nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>


nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>

"nmap j gj
"nmap k gk

cnoremap <C-a>  <Home>

set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

"nmap <C-e> :e#<CR>

set showcmd

"cmap \W !sudo tee % >/dev/null<CR>

" Colorpicker (only for mac)
"inoremap <C-C> <C-R>=system('color-picker')<CR>

"""""""""""""""""""" KEYBINDINGS

"map cc <leader>c<space>
"map  <F6> :setlocal spell! spelllang=en<CR>
"map  <F12> :set invhls<CR>
"cmap <C-g> <C-u><ESC>
"command! -bang W w<bang>
map <c-k> :bnext<CR>
map <c-j> :bprevious<CR>

map <c-x> :CtrlPClearAllCaches<CR>



