
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'juicemia/vim-colors'
Plugin 'scrooloose/nerdTree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set showcmd
set showmatch
set ignorecase
set backspace=start,eol,indent
set laststatus=2
set statusline=%t\ %y\ %m\ %c,\ %l\ \%P
let NERDTreeShowHidden=1

colorscheme dark-custom

let g:go_metalinter_enabled = ['vet', 'golint', 'gotype', 'test', 'structcheck', 'aligncheck', 'varcheck', 'gocyclo', 'ineffassign', 'vetshadow', 'deadcode', 'interfacer']
let g:go_metalinter_autosave_enabled = ['goimports', 'vet', 'golint']
let g:go_metalinter_autosave = 1

let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

" forcing this so the file can be sourced repeatedly w/o errors
command! W w
command! Q q
command! WQ wq

set bg=dark

nnoremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <Esc>:NERDTreeToggle<CR>

" Open up an empty vertical split
inoremap <leader>e <Esc>:vnew<CR>i
nnoremap <leader>e :vnew<CR>

" Open up an empty horizontal split
inoremap <leader>o <Esc>:new<CR>i
nnoremap <leader>o :new<CR>

" Cycle through buffers
inoremap <leader><Tab> <ESC>:bnext<CR>
nnoremap <leader><Tab> :bnext<CR>
inoremap <leader>` <ESC>:bprev<CR>
nnoremap <leader>` :bprev<CR>

inoremap <F4> <Esc>:set invnumber<CR>
nnoremap <F4> :set invnumber<CR>

nnoremap <F12> :GoDef<CR>
nnoremap <leader>- :GoDefPop<CR>

nnoremap <leader>l :GoMetaLinter<CR>
