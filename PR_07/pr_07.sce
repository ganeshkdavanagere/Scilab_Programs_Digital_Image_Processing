// Increase stack size to prevent memory issues
stacksize("max");

// Load the image
imagePath = "boloor.jpg"; // Replace with your image file name
image = imread(imagePath);

// Convert to grayscale if necessary
if size(image, "c") == 3 then
    grayImage = rgb2gray(image); // Convert RGB to grayscale
else
    grayImage = image; // Use directly if already grayscale
end

// Ensure the grayscale image is of type double
grayImage = im2double(grayImage); // Normalize intensity values to [0, 1]

// Define the high-pass filter kernel
kernel = [-1 -1 -1; -1 8 -1; -1 -1 -1];

// Apply the convolution using conv2
filteredImage = conv2(grayImage, kernel, "same"); // "same" ensures output size matches input

// Enhance edges by blending the original and filtered images
alpha = 0.5; // Weight for the original image
beta = 0.5;  // Weight for the filtered image
enhancedImage = alpha * grayImage + beta * filteredImage; // Blend images

// Normalize the images to the range [0, 1]
grayImage = grayImage / max(grayImage(:));
filteredImage = filteredImage / max(filteredImage(:));
enhancedImage = enhancedImage / max(enhancedImage(:));

// Display the input and output images in a single subplot window
clf(); // Clear the current figure
subplot(1, 3, 1);
imshow(grayImage); // Display the original grayscale image
title("Original Image");

subplot(1, 3, 2);
imshow(filteredImage); // Display the high-pass filtered image
title("Filtered Image");

subplot(1, 3, 3);
imshow(enhancedImage); // Display the enhanced image
title("Enhanced Image");

// Save the subplot as an image file
xs2png(0, "output_subplot.png"); // Save the combined subplot as a PNG
