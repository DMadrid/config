syntax on

set termguicolors
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nu rnu
set nowrap
set smartcase
set incsearch
set cursorline
set noshowcmd

call plug#begin('~/.vim/plugged') 
Plug 'morhetz/gruvbox'                                  " theme
Plug 'jremmen/vim-ripgrep'                              " grep
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " fuzzy find
Plug 'junegunn/fzf.vim'                                 " -
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " intellisense
Plug 'scrooloose/nerdtree'                              " directory tree
call plug#end()

colorscheme gruvbox
" disable background change
highlight Normal ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none


" key maps
nmap <C-b> :NERDTreeToggle <CR>
nmap <C-p> :GFiles <CR>

" statusline
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %t
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=\ %l:%c
