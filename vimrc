set nocompatible

silent! call pathogen#runtime_append_all_bundles()

filetype plugin indent on

set tabstop=2               " default size of a real tab stop
set softtabstop=2           " pressing tab/backspaces inserts/removes 2 chars
set shiftwidth=2            " the number of spaces used by << and >>
set expandtab               " insert spaces instead of tabs

set autoindent
set nowrap                  " disable line wrapping
set incsearch               " show search matches as you type

set autoread                " read file if it's changed outside of vim

set history=1000            " remember more than 20 commands/search patterns
set noswapfile

let mapleader = ","         " set <LEADER> to ,

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Automatically source the config file on save.
if has("autocmd")
  autocmd BufWritePost .vimrc source $MYVIMRC
endif

if &t_Co > 2 || has("gui_running")
  syntax on
endif


" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction
nmap <LEADER>w :call TrimWhiteSpace()<CR>

" Quickly open the vim config file in a new tab.
nmap <leader>v :tabedit $MYVIMRC<CR>

" Show whitespace
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

nmap <LEADER>d :NERDTreeToggle<CR>

set tags+=gems.tags  "ctags for Gems
