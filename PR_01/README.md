
# Image Processing with Scilab

## Project Overview
This project demonstrates basic image processing operations using Scilab, such as reading an image, converting it to grayscale, and saving the processed image. The program also displays both the original and processed grayscale images side by side using subplots for easy comparison.

## Features
- Read an image from a specified directory.
- Convert the image to grayscale.
- Save the output grayscale image.
- Display the original and grayscale images side by side using subplots.
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
6. The program will prompt you to input the name for the output grayscale image file.
7. The output grayscale image and the subplot will be saved in the specified directory.

## Code Explanation
- **Input Image**: The input image is read from a specified folder using the `imread` function.
- **Grayscale Conversion**: The `rgb2gray` function is used to convert the color image into grayscale.
- **Saving Output**: The processed grayscale image is saved using the `imwrite` function.
- **Display**: Both the original and the grayscale image are displayed side by side using the `subplot` function. The subplot image is then saved as a new image file.

## Future Enhancements
- Implement advanced image processing features such as edge detection, noise reduction, and object detection.
- Create a graphical user interface (GUI) for better user interaction.
- Enable batch processing of images for efficiency.
- Integrate machine learning models for more complex image analysis tasks.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements
- Scilab team for providing the Scilab platform and the image processing functions.
- Various libraries used for image manipulation and processing.
