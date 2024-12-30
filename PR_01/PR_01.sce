//This project reads an image, converts it to grayscale, and saves the output while also creating a comparison subplot of the original and grayscale images. The subplot is saved as an additional image file, providing a visual representation of the transformation.


// Define the folder path where the images are located or will be saved
folderPath = "C:\\Users\\Shrishanth S Shetty\\OneDrive\\Documents\\PR_01\\";

// Specify the name of the input image file
inputFileName = "input.jpg"; 

// Construct the full path to the input image
inputImagePath = folderPath + inputFileName;

// Read the input image into a matrix
imageMatrix = imread(inputImagePath);

// Convert the input image to grayscale
grayImage = rgb2gray(imageMatrix);

// Prompt the user to enter the name for the output grayscale image file
outputFileName = input("Enter the name for the output grayscale image file (e.g., output.jpg): ", "string");

// Construct the full path for the output grayscale image
outputImagePath = folderPath + outputFileName;

// Save the grayscale image to the specified output path
imwrite(grayImage, outputImagePath);

// Display a success message with the path of the saved grayscale image
disp("Grayscale image saved successfully as: " + outputImagePath);

// Create a figure for the subplot
f = figure();

// Display the input and output images side by side in a subplot
subplot(1, 2, 1); // Create the first subplot for the original image
imshow(imageMatrix);
title("Original Image"); // Set the title for the original image

subplot(1, 2, 2); // Create the second subplot for the grayscale image
imshow(grayImage);
title("Grayscale Image"); // Set the title for the grayscale image

// Save the subplot as an image
subplotOutputFile = folderPath + "result.jpg";
xs2png(f, subplotOutputFile); // Save the figure as a PNG file

// Display a success message for the saved subplot
disp("Subplot image saved successfully as: " + subplotOutputFile);

// Display the subplot figure
show_window();
