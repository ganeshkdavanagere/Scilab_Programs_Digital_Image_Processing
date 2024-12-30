// Clear console and variables
clc;
clear;

// Load IPCV toolbox
atomsLoad("IPCV");

// Load an image
imagePath = "C:\Users\Kishan Karyappa K\Desktop\DIP\input.tif"; // Replace with the correct image path
originalImage = imread(imagePath);

// Convert the image to grayscale and ensure it's a double matrix
grayscaleImage = double(rgb2gray(originalImage));

// Define a 5x5 low-pass filter (average filter)
lowPassFilter = ones(5, 5) / 25;

// Apply the filter using convolution
smoothedImage = conv2(grayscaleImage, lowPassFilter, "same");

// Normalize the smoothed image to the 0-255 range for display
smoothedImage = uint8(255 * (smoothedImage - min(smoothedImage(:))) / (max(smoothedImage(:)) - min(smoothedImage(:))));

// Save the smoothed image to a file
outputPath = "C:\Users\Kishan Karyappa K\Desktop\DIP\output.jpg"; // Replace with your desired save path
imwrite(smoothedImage, outputPath);

// Create a figure for displaying the images
figure;

// Display the original image
subplot(1, 2, 1);
imshow(originalImage);
title("Original Image");

// Display the smoothed image
subplot(1, 2, 2);
imshow(smoothedImage);
title("5x5 Low-Pass Filtered Image");

// Notify the user that the image is saved
disp("Smoothed image saved at: " + outputPath);
