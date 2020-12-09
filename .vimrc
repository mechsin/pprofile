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

" The below were all added as part of the VIM scripting class

" Makes current word case. One map for insert mode and the other for normal mode 
inoremap <leader><c-u> <esc>viwUA
nnoremap <leader><c-u> viwU

" Add abbreivation for my name
iabbrev myname Christopher Nyland

" add abbreivation for my email
iabbrev myemail menyland@gmail.com

" add abbreviation to fix common mispelling teh 
iabbrev teh the
