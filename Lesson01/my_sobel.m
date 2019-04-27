function img_edge = my_sobel(img)
	%gradients = [1 2 1];
	
	%s_x = zeros(3);
	%s_x(:, 1) = -gradients';
	%s_x(:, 3) = gradients';
	%s_x = s_x .* 1/8;
	%disp(s_x);

	%s_y = zeros(3);
	%s_y(1, :) = gradients';
	%s_y(3, :) = -gradients';
	%s_y = s_y .* 1/8;
	%disp(s_y);

	%x_grad = imfilter(img, s_x);
	%y_grad = imfilter(img, s_y);

	%img_edge = x_grad + y_grad;

	filt = fspecial('sobel');
	img_edge = imfilter(double(img), filt);

    
endfunction