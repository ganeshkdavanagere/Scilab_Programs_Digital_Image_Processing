//Color Image Thresholding: For Object Detection

// Load the image
img_path = "C:\\Users\\mahes\\Downloads\\dip\\image\\orange.jpg";
img = imread(img_path);

// Convert the image to grayscale (if it's a color image)
gray_img = rgb2gray(img);

// Set a threshold value (you can adjust this based on the image)
threshold_value = 100; // This threshold can be adjusted

// Apply thresholding: Pixels with values above the threshold will be set to 1, others to 0
binary_img = gray_img > threshold_value;

// Display the original and binary image
subplot(1, 2, 1);
imshow(img);
title('Original Image');

subplot(1, 2, 2);
imshow(binary_img);
title('Binary Image after Thresholding');

// Optional: Label connected components (objects)
[L, num_objects] = label(binary_img);
disp("Number of objects detected: " + string(num_objects));

// Display labeled image
imshow(L);
title("Labeled Objects");
