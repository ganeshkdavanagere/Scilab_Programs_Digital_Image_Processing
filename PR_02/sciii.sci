// Check if the Image Processing module is available
if ~with_modules("image") then
    error("Image Processing module is not installed.");
end

// Step 1: Load an image
[file_path, ok] = uigetfile(["*.jpg"; "*.png"; "*.bmp"], "Select an Image");
if ~ok then
    disp("No file selected. Exiting...");
    quit;
end
img = imread(file_path);

// Step 2: Display the image
figure("Original Image");
imshow(img);
title("Original Image");

// Step 3: User selects a region interactively
disp("Select the cropping region using your mouse.");
crop_rect = ginput(2); // User clicks two points (diagonally opposite corners)

// Extract cropping coordinates
x_start = round(min(crop_rect(:, 1)));
y_start = round(min(crop_rect(:, 2)));
x_end = round(max(crop_rect(:, 1)));
y_end = round(max(crop_rect(:, 2)));

// Validate the coordinates
[x_max, y_max, ~] = size(img);
if x_start < 1 | y_start < 1 | x_end > x_max | y_end > y_max then
    error("Invalid cropping dimensions.");
end

// Step 4: Perform the cropping
cropped_img = img(y_start:y_end, x_start:x_end, :);

// Step 5: Display the cropped image
figure("Cropped Image");
imshow(cropped_img);
title("Cropped Image");

// Step 6: Save the cropped image
save_path = uiputfile(["*.jpg"; "*.png"], "Save Cropped Image As");
if save_path <> "" then
    imwrite(cropped_img, save_path);
    disp("Cropped image saved successfully.");
else
    disp("Save operation canceled.");
end
