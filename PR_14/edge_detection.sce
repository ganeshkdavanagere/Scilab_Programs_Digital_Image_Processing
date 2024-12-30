// Load image
image_path = "C:/Users/BHAVISH/Desktop/dipteam14/image.jpg";
img = imread(image_path);

// Convert to grayscale if it is a colored image
if size(img, 3) == 3 then
    img_gray = rgb2gray(img);
else
    img_gray = img;
end

// Normalize image to [0, 1] range for floating point operations
img_gray = double(img_gray) / 255;

// Sobel filter kernel
sobel_x = [-1 0 1; -2 0 2; -1 0 1];
sobel_y = [-1 -2 -1; 0 0 0; 1 2 1];

// Prewitt filter kernel
prewitt_x = [-1 0 1; -1 0 1; -1 0 1];
prewitt_y = [-1 -1 -1; 0 0 0; 1 1 1];

// Apply Sobel filter
sobel_img_x = conv2(img_gray, sobel_x, 'same');
sobel_img_y = conv2(img_gray, sobel_y, 'same');
sobel_edges = sqrt(sobel_img_x.^2 + sobel_img_y.^2);

// Apply Prewitt filter
prewitt_img_x = conv2(img_gray, prewitt_x, 'same');
prewitt_img_y = conv2(img_gray, prewitt_y, 'same');
prewitt_edges = sqrt(prewitt_img_x.^2 + prewitt_img_y.^2);

// Display images in a subplot
subplot(2, 2, 1);
imshow(img_gray);
title("Original Image");

subplot(2, 2, 2);
imshow(sobel_edges);
title("Sobel Filter Edges");

subplot(2, 2, 3);
imshow(prewitt_edges);
title("Prewitt Filter Edges");
