syntax on

filetype plugin indent on

set encoding=utf-8

set number relativenumber

"Configuracion del tema
packadd! onedark.vim
colorscheme onedark

"Configuracion de NERDTree
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"Inicia NERDTree cuando vim se abre una carpeta
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | 
            \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
"Cierra la pestaña si NERDTree es la unica ventana restante
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
"Mantiene el mismo NERDTree en cada pestaña
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:DevIconsEnableFoldersOpenClose=1
let g:NERDTreeShowHidden=1

"Configuracion del airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

set foldmethod=syntax
autocmd Filetype * AnyFoldActivate

