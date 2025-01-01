// Load the image
image_path = "C:\Users\Abhishek\OneDrive\Documents\DBMS Seminar Report (1)\PR_17\input.jpg";
input_image = imread(image_path);

// Convert to grayscale if the image is in color
if size(input_image, 3) == 3 then
    gray_image = rgb2gray(input_image);
else
    gray_image = input_image;
end

// Calculate histogram
hist_values = imhist(gray_image);

// Display the results
figure();

// Subplot 1: Original Image
subplot(1, 2, 1);
imshow(input_image);
title("Input Image");

// Subplot 2: Histogram
subplot(1, 2, 2);
bar(hist_values);
xlabel("Intensity Values");
ylabel("Frequency");
title("Histogram of Intensity Distribution");

// Save the figure (optional)
save_path = "output_histogram.png";
xs2png(gcf(), save_path);

disp("Image and histogram displayed successfully.");
