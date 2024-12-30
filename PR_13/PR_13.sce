// Function to apply a color filter matrix to an image
function output_img = applycolorfilter(input_img, filter_matrix)
    [rows, cols, channels] = size(input_img);
    output_img = zeros(rows, cols, 3);
    for i = 1:rows
        for j = 1:cols
            pixel = input_img(i, j, :);
            pixel = pixel(:); // Convert to column vector
            output_pixel = filter_matrix * pixel;
            output_img(i, j, :) = min(output_pixel, 1); // Ensure values don't exceed 1
        end
    end
endfunction

// Read the input image
input_image_path = "C:\Users\shush\OneDrive\Desktop\DIP\input_image.jpg";
img = imread(input_image_path);

// Display the original image
clf;
figure(1);
imshow(img);
title("Original Image");

// Convert the image to double for processing
img = im2double(img);

// Extract the color channels
R = img(:,:,1); // Red channel
G = img(:,:,2); // Green channel
B = img(:,:,3); // Blue channel

// Create artistic filters by manipulating channels
// Filter 1: Enhance Red Channel
filtered_img1 = cat(3, R*1.5, G*0.7, B*0.7);
filtered_img1(filtered_img1 > 1) = 1;

// Filter 2: Enhance Green Channel
filtered_img2 = cat(3, R*0.7, G*1.5, B*0.7);
filtered_img2(filtered_img2 > 1) = 1;

// Filter 3: Enhance Blue Channel
filtered_img3 = cat(3, R*0.7, G*0.7, B*1.5);
filtered_img3(filtered_img3 > 1) = 1;

// Filter 4: Sepia Effect (Artistic)
sepia_filter = [0.393, 0.769, 0.189;
                0.349, 0.686, 0.168;
                0.272, 0.534, 0.131];
sepia_img = applycolorfilter(img, sepia_filter);

// Convert filtered images to uint8 for display
filtered_img1 = uint8(filtered_img1 * 255);
filtered_img2 = uint8(filtered_img2 * 255);
filtered_img3 = uint8(filtered_img3 * 255);
sepia_img = uint8(sepia_img * 255);

// Display the filtered images
clf;
figure(2);
subplot(2,2,1);
imshow(filtered_img1);
title("Enhanced Red Channel");

subplot(2,2,2);
imshow(filtered_img2);
title("Enhanced Green Channel");

subplot(2,2,3);
imshow(filtered_img3);
title("Enhanced Blue Channel");

subplot(2,2,4);
imshow(sepia_img);
title("Sepia Effect");
1
