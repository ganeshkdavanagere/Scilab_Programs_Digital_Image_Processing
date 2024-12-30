// Splitting RGB Channels and Merging Them Back in Scilab

// Read the image
imagePath = "C:\Users\shush\OneDrive\Desktop\DIP\sample.jpeg";
originalImage = imread(imagePath);

// Check if the image is loaded
if isempty(originalImage) then
    disp("Error: Could not load the image. Check the file path.");
    quit;
end

// Split the RGB channels
R = originalImage(:,:,1); // Red channel
G = originalImage(:,:,2); // Green channel
B = originalImage(:,:,3); // Blue channel

// Display the individual channels
figure("Name", "RGB Channels Split");
subplot(2,2,1);
imshow(originalImage);
title("Original Image");

subplot(2,2,2);
imshow(R);
title("Red Channel");

subplot(2,2,3);
imshow(G);
title("Green Channel");

subplot(2,2,4);
imshow(B);
title("Blue Channel");

// Merge the channels back
mergedImage = cat(3, R, G, B);

// Display the merged image
figure("Name", "Merged Image");
imshow(mergedImage);
title("Merged Image");
