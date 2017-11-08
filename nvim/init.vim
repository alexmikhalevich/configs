call plug#begin('~/.local/share/nvim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ajmwagar/vim-deus'
call plug#end()

set relativenumber
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

set background=dark " Setting dark mode
colorscheme deus

let g:ycm_server_python_interpreter='/usr/bin/python2.7'
let g:ycm_global_ycm_extra_conf = '~/.config/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_confirm_extra_conf = 0

let g:NERDTreeWinSize=50

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

map <C-n> :NERDTreeToggle<CR>
nnoremap <C-d> :YcmCompleter GoToDefinition<CR>
nnoremap <C-g> :YcmCompleter GoTo<CR>
nnoremap <C-c> :YcmCompleter GoToDeclaration<CR>
nnoremap <C-h> :YcmCompleter GoToInclude<CR>
nnoremap <C-t> :YcmCompleter GetType<CR>
nnoremap <C-f> :YcmCompleter FixIt<CR>
