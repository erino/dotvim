" Graphical Vim config file
"
set encoding=utf-8
set guioptions-=T           " hide the toolbar
set guioptions-=r           " hide the scrollbar
set guifont=Inconsolata:h15

set modelines=0

set number		              " show line numbers
set clipboard=unnamed       " use OS X clipboard

set lines=80 columns=85     " window dimensions
set colorcolumn=81          " Show coloured bar at more then 80 chars

" See http://effectif.com/vim/changing-window-size
nmap <leader>1 :set lines=90 columns=85<CR><C-w>o
nmap <leader>2 :set lines=90 columns=185<CR><C-w>v
nmap <leader>3 :set lines=90 columns=200<CR><C-w>v

" Colorized Ruby, Rake, RSpec, and Cucumber output in vim using ConqueTerm
nmap <silent> <Leader>rf   :call RunRspecCurrentFileConque()<CR>
nmap <silent> <Leader>rl   :call RunRspecCurrentLineConque()<CR>
nmap <silent> <Leader>rcRR :call RunRakeConque()<CR>
nmap <silent> <Leader>rcrl :call RunLastConqueCommand()<CR>

let g:ruby_conque_rspec_command='bundle exec rspec'

syntax enable
set background=dark
colorscheme solarized       " Solarized colour scheme

