function index = find_template_1D(t, s)
	cc = normxcorr2(t, s);

	index = find(cc == max(cc(:))) - size(t)(2) +  1;


endfunction