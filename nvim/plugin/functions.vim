function! ToggleRelativeNumber()
" on/off relative numbers
	if &relativenumber == 1
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunction

nmap <F5> :call ToggleRelativeNumber()<cr>
imap <F5> <Esc>: call ToggleRelativeNumber()<cr>a

fun! TrimWhiteSpace()
" trim empty spaces when save a file
        let l:save = winsaveview()
        keeppatterns %s/\s\+$//e
        call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN " author
        autocmd!
        autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
