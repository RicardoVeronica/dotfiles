" Makigas config
" --------------
" on/off relative numbers
function! ToggleRelativeNumber()
	if &relativenumber == 1
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunction

nmap <F5> :call ToggleRelativeNumber()<cr>
imap <F5> <Esc>: call ToggleRelativeNumber()<cr>a

" THE_PRIMEAGEN config
" --------------------
" trim empty spaces when save a file
fun! TrimWhiteSpace()
        let l:save = winsaveview()
        keeppatterns %s/\s\+$//e
        call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
        autocmd!
        autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction

" Coc config
" ----------
" Enter to choose in list of autocompletition options
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
