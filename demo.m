% Read image:
lena = imread("../intro-to-computer-vision-with-python-opencv/images/lena.png");
figure, imshow(lena), title("Original image, color");lenaMong = rgb2gray(leng);

% Monochorme image:
lenaMono = rgb2gray(lena); 
figure, imshow(lenaMono), title("Original image, monochrome");

% Smoothed image:
h = fspecial('gaussian', [11 11], 4);figure, surf(h);
lenaSmooth = imfilter(lenaMono, h);
figure, imshow(lenaSmooth), title("Smoothed image");

% Methood 1: 
lenaL = lenaSmooth;
lenaL(:, [1:(end-1)]) = lenaL(:, [2:end]);
lenaR = lenaSmooth;
lenaR(:, [2:(end)]) = lenaR(:, [1:(end-1)]);
lenaDiff = double(lenaR) - double(lenaL);
figure, imshow(lenaDiff, []), title("Difference between right and left shifted image");

% Method 2: Canny edges:
cannyEdges = edge(lenaMono, 'canny');
figure, imshow(cannyEdges), title('Original edges');

cannyEdges = edge(lenaSmooth, 'canny');
figure, imshow(cannyEdges), title('Edges of smoothed image');

% Method 3: Laplacian of Gaussian:
logEdges = edge(lenaMono, 'log');
figure, imshow(logEdges), title('Laplacian of Gaussian');
