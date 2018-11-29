set termguicolors


if has('vim_starting')  
  set runtimepath+=~/.config/nvim/
endif

"in Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=$HOME .config/nvim/bundle//repos/github.com/Shougo/dein.vim


if dein#load_state($HOME.".config/nvim/bundle/")
  call dein#begin($HOME. ".config/nvim/bundle/")

  " Let dein manage dein
  " Required:
  call dein#add($HOME.'.config/nvim/bundle//repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call deoplete#enable()
  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('mhinz/vim-startify')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('xuyuanp/git-nerdtree')
  call dein#add('tpope/vim-dispatch')
  call dein#add('tpope/vim-projectionist')
  call dein#add('noahfrederick/vim-composer')
  call dein#add('noahfrederick/vim-laravel')
  call dein#add('roxma/nvim-completion-manager')
  call dein#add('autozimu/LanguageClient-neovim', {'do': ':UpdateRemotePlugins'})
  call dein#add('roxma/nvim-cm-tern',  {'do': 'npm install'})
  call dein#add('roxma/nvim-cm-php-language-server',  {'do': 'composer install && composer run-script parse-stubs'})
  call dein#add('roxma/python-support.nvim')
  call dein#add('brooth/far.vim')
  call dein#add('airblade/vim-gitgutter')
  " You can specify revision/branch/tag.
  call dein#add('donRaphaco/neotex')
  call dein#add('hkupty/iron.nvim')
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('scrooloose/nerdtree')
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')
  call dein#add('maxmellon/vim-jsx-pretty')
  call dein#add('nvie/vim-flake8')
  call dein#add('tpope/vim-surround')
  call dein#add('majutsushi/tagbar')
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')
  "  call dein#add('python-mode/python-mode')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('fatih/vim-go')
  call dein#add('elixir-lang/vim-elixir')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#left_sep = ' '
let g:airline_poerline_fonts=1

set encoding=utf8
set guifont=Mono
set nu

filetype indent on
colorscheme Benokai


autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype php setlocal ts=4 sts=4 sw=4


set ruler
set tabstop=4
set expandtab
set shiftwidth=4

  let NERDTreeChDirMode=2
  let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
  let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
  let NERDTreeShowBookmarks=1
  map <F3> :NERDTreeToggle<CR>

  " Syntax for multiple tag files are
  " set tags=/my/dir1/tags, /my/dir2/tags
  set tags=tags;$HOME/.vim/tags/

  " TagList Plugin Configuration
  let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
  let Tlist_GainFocus_On_ToggleOpen = 1
  let Tlist_Close_On_Select = 1
  let Tlist_Use_Right_Window = 1
  let Tlist_File_Fold_Auto_Close = 1
  map <F7> :TlistToggle<CR>

  " Viewport Controls
  " ie moving between split panes
  map <silent>,h <C-w>h
  map <silent>,j <C-w>j
  map <silent>,k <C-w>k
  map <silent>,l <C-w>l

  set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
  set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
  \ [%l/%L\ (%p%%)
  filetype plugin indent on
  au FileType py set autoindent
  au FileType py set smartindent
  au FileType py set textwidth=79 " PEP-8 Friendly


"let g:python_host_prog = /usr/bin/python"
"let g:python3_host_prog = /usr/bin/python3"

let g:deoplete#enable_at_startup = 1
let g:python_support_python3_require=0
let g:python_support_python2_require=0

let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'jedi')
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'mistune')
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'psutil')
let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'setproctitle')

inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

let g:UtilSnipsExpandTrigger        = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger   = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpBackwardTrigger  = "<Plug>(ultisnips_backward)"
let g:UltiSnipsListSnippets         = "<Plug>(ultisnips_list)"
let g:UltiSnipsRemoveSelectModeMappings = 0 

vnoremap <expr> <Plug>(ultisnip_expand_or_jump_result) g:ulti_expand_or_jump_res?'':"\<Tab>"
inoremap <expr> <Plug>(ultisnip_expand_or_jump_result) g:ulti_expand_or_jump_res?'':"\<Tab>"
imap <silent> <expr> <Tab> (pumvisible() ? "\<C-n>" : "\<C-r>=UltiSnips#ExpandSnippetOrJump()\<cr>\<Plug>(ultisnip_expand_or_jump_result)")
xmap <Tab> <Plug>(ultisnips_expand)
smap <Tab> <Plug>(ultisnips_expand)

vnoremap <expr> <Plug>(ultisnips_backwards_result) g:ulti_jump_backwards_res?'':"\<S-Tab>"
inoremap <expr> <Plug>(ultisnips_backwards_result) g:ulti_jump_backwards_res?'':"\<S-Tab>"
imap <silent> <expr> <S-Tab> (pumvisible() ? "\<C-p>" : "\<C-r>=UltiSnips#JumpBackwards()\<cr>\<Plug>(ultisnips_backwards_result)")
xmap <S-Tab> <Plug>(ultisnips_backward)
smap <S-Tab> <Plug>(ultisnips_backward)

" optional mapping provided by NCM. If you press `<c-u>` and nothing has been
" typed, it will popup a list of snippets available
inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>

autocmd BufWritePost *.py call Flake8()

