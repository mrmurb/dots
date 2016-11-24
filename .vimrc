set nocompatible

""" Vundle Plugin Manager {{{
    """ Set up Vundle if first run {{{
        let has_vundle=1
	if !filereadable($HOME."/.vim/bundle/Vundle.vim/README.md")
	    echo "Installing Vundle..."
	    echo ""
	    silent !mkdir -p $HOME/.vim/bundle
	    silent !git clone https://github.com/VundleVim/Vundle.vim $HOME/.vim/bundle/Vundle.vim
	    let has_vundle=0
	endif
    """ }}}
    """ Initialize Vundle {{{
        filetype off
	set rtp+=$HOME/.vim/bundle/Vundle.vim
	call vundle#begin()
    """ }}}
    """ Plugins {{{
        Plugin 'VundleVim/Vundle.vim'
	Plugin 'chrisbra/SudoEdit.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'scrooloose/nerdcommenter'
	Plugin 'vim-syntastic/syntastic'
        Plugin 'Shougo/neco-vim'
        Plugin 'Shougo/neocomplete.vim'
        Plugin 'vim-airline/vim-airline-themes'
        Plugin 'morhetz/gruvbox'
        Plugin 'majutsushi/tagbar'
        Plugin 'itchyny/lightline.vim'
    """ }}}
    """ Finish Vundle {{{
        call vundle#end()
        filetype plugin indent on
    """ }}}
    """ Init plugins if first run {{{
        if has_vundle == 0
	    :silent! VundleInstall
	    :qa
	endif
    """ }}}
""" }}}

""" User Interface {{{
    """ Visual {{{
        syntax on
        set number
        set linebreak
        set showbreak=+++
        set showmatch
        set visualbell
        set ruler
        set showtabline=2
        set laststatus=2
        set cmdheight=1
        colorscheme gruvbox
    """ }}}
    """ Search {{{
    	set hlsearch
	set smartcase
	set ignorecase
	set incsearch
    """ }}}
    """ Tabs {{{
    	filetype indent on
	set nowrap
	set autoindent
	set expandtab
	set shiftwidth=4
	set smartindent
	set smarttab
	set softtabstop=4
        set backspace=indent,eol,start
    """ }}}
    """ Folding {{{
        set foldcolumn=0
        set foldmethod=indent
        set foldnestmax=10
        set foldlevelstart=99
    """ }}}
    set formatoptions+=j
""" }}}

""" Keybindings {{{
    let mapleader=","
    
    " Remove annoying bindings
    inoremap <F1> <Nop>
    nnoremap <F1> <Nop>
    vnoremap <F1> <Nop>
    map Q <Nop>

    " Toggle pastemode
    set pastetoggle=<F3>
    
    " Toggle folding
    nnoremap <silent> <Space> @=(foldlevel('.') ? 'za' : "\<Space>")<CR>

    " Tagbar
    map <F1> :TagbarToggle<CR>

    " Window navigation
    noremap <silent> <A-Up> :wincmd k<CR>
    noremap <silent> <A-Down> :wincmd j<CR>
    noremap <silent> <A-Right> :wincmd l<CR>
    noremap <silent> <A-Left> :wincmd h<CR>

    """ Toggle realtive numbers {{{
        function! NumberToggle()
            if(&relativenumber == 1)
                set norelativenumber
            else
                set relativenumber
            endif
        endfunction

        nnoremap <Leader>r :call NumberToggle()<CR>
    """ }}}
""" }}}

""" Syntastic {{{
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 1
""" }}}

""" Neocomplete {{{
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
    
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
""" }}}
