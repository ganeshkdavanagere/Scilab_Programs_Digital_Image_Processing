// Noise Reduction using Mean and Median Filters

// Load the image
image_path = "Add your image path here";// Edit to your path image
img = imread(image_path);

// Convert to grayscale if it's a color image
if size(img, 3) == 3 then
  img_gray = rgb2gray(img);
else
  img_gray = img;
end

// Convert to double for calculations
img_gray_double = im2double(img_gray);

// Add salt & pepper noise (example)
noise_level = 0.05; // Adjust noise level as needed
noisy_img_double = imnoise(img_gray_double, "salt & pepper", noise_level);

// Mean Filter
function mean_filter_result = mean_filter(image, kernel_size)
  [rows, cols] = size(image);
  padded_img = zeros(rows + kernel_size - 1, cols + kernel_size - 1);
  padded_img((kernel_size - 1)/2 + 1:rows + (kernel_size - 1)/2, (kernel_size - 1)/2 + 1:cols + (kernel_size - 1)/2) = image;
  mean_filter_result = zeros(rows, cols);

  for i = 1:rows
    for j = 1:cols
      neighborhood = padded_img(i:i + kernel_size - 1, j:j + kernel_size - 1);
      mean_filter_result(i, j) = mean(neighborhood);
    end
  end
endfunction

kernel_size_mean = 3; // Adjust kernel size as needed (e.g., 3, 5, 7)
mean_filtered_img_double = mean_filter(noisy_img_double, kernel_size_mean);

// Median Filter
function median_filter_result = median_filter(image, kernel_size)
    [rows, cols] = size(image);
    padded_img = zeros(rows + kernel_size - 1, cols + kernel_size - 1);
    padded_img((kernel_size - 1)/2 + 1:rows + (kernel_size - 1)/2, (kernel_size - 1)/2 + 1:cols + (kernel_size - 1)/2) = image;
    median_filter_result = zeros(rows, cols);

    for i = 1:rows
        for j = 1:cols
            neighborhood = padded_img(i:i + kernel_size - 1, j:j + kernel_size - 1);
            median_filter_result(i, j) = median(neighborhood);
        end
    end
endfunction

kernel_size_median = 3; // Adjust kernel size as needed (e.g., 3, 5, 7)
median_filtered_img_double = median_filter(noisy_img_double, kernel_size_median);

// Display the images in a subplot
scf(1); // Create a new figure window

subplot(2, 2, 1);
imshow(img_gray);
title("Original Image");

subplot(2, 2, 2);
imshow(noisy_img_double);
title("Noisy Image");

subplot(2, 2, 3);
imshow(mean_filtered_img_double);
title(sprintf("Mean Filtered (Kernel %d)", kernel_size_mean));

subplot(2, 2, 4);
imshow(median_filtered_img_double);
title(sprintf("Median Filtered (Kernel %d)", kernel_size_median));

// Ensure the figure is displayed
drawnow();
