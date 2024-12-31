

// Define the image path
image_path = 'C:/sciii/spiderman.jpg';  // Update with your image path

// Read the image
img = imread(image_path);

// Check if the image has three channels (RGB)
[rows, cols, channels] = size(img);
if channels == 1 then
    disp("The image is grayscale.");
else
    disp("The image is colored.");
end

// Define the cropping coordinates (x_start, y_start, width, height)
x_start = 1000;  // Starting x-coordinate
y_start = 1000;  // Starting y-coordinate
width = 300;    // Width of the cropped area
height = 300;   // Height of the cropped area

// Crop the image (ensuring we handle color properly)
cropped_img = img(y_start:(y_start+height-1), x_start:(x_start+width-1), :);

// Save the cropped image
cropped_image_path = 'C:/sciii/cropped_spiderman.jpg';  // Update the save path
imwrite(cropped_img, cropped_image_path);

// Display the original and cropped images using subplots
subplot(1, 2, 1);  // First subplot for the original image
imshow(img);
title("Original Image");

subplot(1, 2, 2);  // Second subplot for the cropped image
imshow(cropped_img);
title("Cropped Image");
