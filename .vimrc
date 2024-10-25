au BufRead,BufNewFile *.js,*.mjs,*.html,*.css,*.vue,*.scss match BadWhitespace /\s\+$/

set encoding=utf-8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set smartcase
set ignorecase
set smartindent
set ruler
set nohlsearch
set visualbell
set history=1000
set smarttab
set shiftround
set termbidi
colorscheme default
syntax on

" Variables and other configs
highlight BadWhitespace ctermbg=red guibg=black

 " Open Explorer
 nnoremap <Space>ee :Explore<CR>
 nnoremap <Space>es :Sexplore<CR>
 nnoremap <Space>ev :Vexplore<CR>

 " Move lines up and down in visual mode
 vnoremap J :m '>+1<CR>gv=gv'<CR>
 vnoremap K :m '<-2<CR>gv=gv'<CR>

 " Keep the cursor in the middle in searching
 nnoremap n nzzzv
 nnoremap N Nzzzv

 " Paste without losing the buffer
 xnoremap <Space>p "_dP

 " Yank into the system clipboard
 nnoremap <Space>yy "+yy
 vnoremap <Space>y "+y
 vnoremap <Space>Y "+Y
