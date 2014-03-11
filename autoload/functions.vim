" Custom scratch buffers (http://dhruvasagar.com/2014/03/11/creating-custom-scratch-buffers-in-vim)
function! functions#ScratchEdit(cmd, options)
	exe a:cmd tempname()
	setl buftype=nofile bufhidden=wipe nobuflisted
	if !empty(a:options) | exe 'setl' a:options | endif
endfunction
