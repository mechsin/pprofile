" Assigned - dash as the leader character
let mapleader = '-'
" Shift round makes sure tabs are always even
set shiftround
" Adds line numbers
set number
" Turns off line wrap
set nowrap
" Turn on syntax highlighting
syntax on
" Set auto indent
set autoindent
" Set spell checking on
set spell spelllang=en_us
" Tab settings
set shiftwidth=4
set softtabstop=4
set expandtab
" Set status line to always show
set laststatus=2
" Set linebreak on so that when wrap is on
" the break happens at a word
set linebreak
" Set 80 column color line
set colorcolumn=80

" Move lines up and down using leader j and k
noremap <leader>j ddp
noremap <leader>k ddkP

" Open vimrc for editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source current MYVIMRC
nnoremap <leader>sv :source $MYVIMRC<cr>

" Add single quotes to everything after = sign
nnoremap <leader>' F=wi'<esc>'<esc>g_a'<esc>

" Add single quote before and after the selected
" visual text
vnoremap <leader>' <esc>`<i'<esc>`>ea'<esc>

" Remap H and L to move to the beginning and end of the line
nnoremap H 0
nnoremap L $

" Remap Esc to qj
inoremap qj <esc>
" If your having trouble with a remap just disable the
" old one with the below line. This line makes the escape
" key a nop.
" inoremap <esc> <nop>

" Map shift tab to decrement tab
inoremap <S-Tab> <C-d>

augroup MyGroup

	" Clear the autocmds of the current group so the
	" don't get piled up if the vimrc is reloaded
	autocmd!

	" Add autocmd to remove trailing white space
	" This effects all file so it might be bad sometimes
	" For instances this will mess up editing git hunks
	" autocmd BufWritePre <buffer> %s/\s\+$//e

	" Execute Python files with leader p
	autocmd FileType python nnoremap <leader>p terminal python %:p
	autocmd FileType python setlocal expandtab

	" Set Rules for make files
	autocmd FileType make setlocal tabstop=4 softtabstop=0 noexpandtab

augroup END

" The below function and group are copied mostly from the below URL on stack
" overflow https://vi.stackexchange.com/a/35172
" The function and group edit the highlighting for the spelling module.
" I makes it so that incorrect words are underlined and the color is
" change rather than coloring them with a background color.
" I really want only the underline to be colored differently but apparently
" that is a relatively new feature so check back on that in the future.
function! MyHighlights() abort
    hi clear SpellBad
    hi SpellBad cterm=underline ctermfg=197
    hi clear SpellLocal
    hi SpellLocal cterm=underline ctermfg=197
endfunction

augroup MyColors

    autocmd!
    autocmd ColorScheme * call MyHighlights()

augroup END

autocmd vimenter * ++nested colorscheme default

" Command to trim trailing whitespace
nnoremap <leader>tt :%s/\s\+$//e<cr>

" Makes current word case. One map for insert mode and the other for normal mode
inoremap <leader><c-u> <esc>viwUA
nnoremap <leader><c-u> viwU

" Add abbreivation for my name
iabbrev myname Christopher Nyland

" add abbreivation for my email
iabbrev myemail menyland@gmail.com

" add abbreviation to fix common mispelling teh
iabbrev teh the

