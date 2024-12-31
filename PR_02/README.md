# Image Cropper: Select and Save a Portion of the Image

## Project Overview
This project demonstrates how to crop a portion of an image using Scilab. Users can specify the region of interest (ROI) to crop and save the cropped portion as a new image file. The program also displays the original and cropped images side by side using subplots for easy comparison.

## Features
- Read an image from a specified directory.
- Allow the user to define a rectangular ROI for cropping.
- Save the cropped portion as a new image file.
- Display the original and cropped images side by side using subplots.
- Save the subplot image as a separate file.

## Requirements
- **Scilab** (Version 6.x or later)
- Scilab Image Processing Library (if required)
- A basic understanding of Scilab programming and image processing

## How to Run
1. Download and install **Scilab** from the official website: [https://www.scilab.org](https://www.scilab.org).
2. Download this repository or clone it using the following command:
   ```bash
   git clone https://github.com/yourusername/your-repository-name.git
   ```
3. Open Scilab and navigate to the folder where the script is located.
4. Ensure the required image file is in the specified directory. You can change the path or the image name in the script as needed.
5. Run the script in Scilab:
   ```scilab
   exec('your-script-name.sce', -1);
   ```
6. The program will prompt you to input the coordinates and dimensions for cropping (top-left corner coordinates and width/height of the ROI).
7. Enter the name for the cropped output image file when prompted.
8. The cropped image and the subplot image will be saved in the specified directory.

## Code Explanation
- **Input Image**: The input image is read from a specified folder using the `imread` function.
- **ROI Selection**: The user specifies the top-left coordinates and the width/height of the cropping area.
- **Cropping**: The `imcrop` function is used to extract the selected portion of the image.
- **Saving Output**: The cropped image is saved using the `imwrite` function.
- **Display**: Both the original and cropped images are displayed side by side using the `subplot` function. The subplot image is then saved as a new image file.

## Future Enhancements
- Allow interactive ROI selection using mouse input.
- Support multiple cropping options (e.g., circular cropping, polygonal cropping).
- Enable batch processing of images for cropping multiple files simultaneously.
- Integrate advanced cropping features such as aspect ratio locking and predefined templates.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements
- Scilab team for providing the Scilab platform and the image processing functions.
- Various libraries used for image manipulation and processing.

