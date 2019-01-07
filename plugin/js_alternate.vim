function! js_alternate#runA()
	let path = expand("%:r")
	let alternatives = js_alternate#alternatives(path)
	for alternative in alternatives
		if filereadable(alternative)
			exec ':e ' . alternative
			break
		end
	endfor
endfunction

function! js_alternate#runAV()
	let path = expand("%:r")
	let alternatives = js_alternate#alternatives(path)
	for alternative in alternatives
		if filereadable(alternative)
			exec ':vs ' . alternative
			break
		end
	endfor
endfunction

command! A call js_alternate#runA()
command! AV call js_alternate#runAV()
