set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'lervag/vimtex'
Plugin 'davidhalter/jedi-vim'
Plugin 'python-mode/python-mode'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-python/python-syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
"Plugin 'nvie/vim-flake8'
Plugin 'itchyny/calendar.vim' 
Plugin 'morhetz/gruvbox'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'jiangmiao/auto-pairs'
Plugin 'joshdick/onedark.vim'
call vundle#end()            " required

set nocompatible              " be iMproved, required
filetype off                  " required

set tabstop=4 
set shiftwidth=4
set expandtab
set textwidth=80
set wrap
set colorcolumn=+1
set spelllang=en_us
set nojoinspaces
set backspace=indent,eol,start
set smartindent
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

filetype plugin indent on
syntax on
set number
hi ColorColumn ctermbg=7
let g:tex_flavor = 'latex'

if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  set termguicolors
endif

colorscheme onedark
set background=dark
set laststatus=2
let g:airline_section_b = '%{strftime("%c")}' 
" let b:airline_disable_statusline = 1
let g:airline#extensions#battery#enabled = 1
let g:airline#extensions#branch#format = 1
let g:airline#extensions#branch#enabled = 1
" autocmd BufWritePost *.py call Flake8()
" let g:flake8_show_in_file = 1
" let g:flake8_show_in_gutter = 1
set autochdir
set splitright
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

set path+=**
set wildmenu
set wildignore+=*.min.js,*.min.css,*/node_modules/*,*/dist/*
let g:jedi#popup_on_dot = 1
let g:jedi#force_py_version = 3
" let g:vimtex_view_method = 'skim'
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_view_general_options_latexmk = '-r 1'
:set list lcs=tab:\|\
set guifont=Fira\ Mono:h12
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
let NERDTreeShowHidden=1
