// Load the Image Processing module
atomsLoad('IPCV');

// Step 1: Import the Original Image
original_img = imread("D:\mini\DIP\gal.png");  // Load the original image

// Step 2: Convert to Grayscale (if it's a color image)
if size(original_img, 3) == 3 then  // Check if the image has 3 channels (RGB)
    original_img = rgb2gray(original_img);  // Convert RGB to grayscale
end

// Step 3: Add Noise to Original Image (for demonstration purposes)
noisy_img = imnoise(original_img, 'salt & pepper', 0.05);  // Add salt-and-pepper noise

// Step 4: Apply Min Filtering (Erosion) for Noise Removal
min_filtered_img = imerode(noisy_img, ones(3, 3));  // Minimum filter (erosion)

// Step 5: Apply Max Filtering (Dilation) for Noise Removal
max_filtered_img = imdilate(noisy_img, ones(3, 3));  // Maximum filter (dilation)

// Step 6: Apply a combination for better noise removal (Optional)
denoised_img = min_filtered_img;  // You can also choose max_filtered_img for a different result

// Step 7: Display Output Image, Noisy Image, and Denoised Image in Separate Windows
figure(1);  // Create window for Output Image (this will display denoised image)
imshow(denoised_img);
title('Output Image');  // Renamed the title for denoised image

figure(2);  // Create window for Original Image (this will display noisy image)
imshow(noisy_img);
title('Original Image');  // Renamed the title for noisy image

figure(3);  // Create window for Denoised Image
imshow(original_img);
title('Denoised Image');  // Renamed the title for the original image

// Step 8: Save Denoised Image
imwrite(denoised_img, 'denoised_image.png');  // Save the denoised output
