# Requirements for Image Processing with Scilab

## 1. **Scilab (Version 6.x or later)**
   Scilab is an open-source software used for numerical computations. It is necessary for running the script and performing image processing tasks.
   - Download from [Scilab Official Website](https://www.scilab.org/).

## 2. **Scilab Image Processing Library (Optional)**
   The image processing functions such as `imread`, `rgb2gray`, and `imwrite` are available in Scilab's built-in libraries. If additional image processing features are required, you can install Scilab's Image and Video Processing (SIVP) toolbox.
   - To install, run `atomsInstall("SIVP")` in Scilab.

## 3. **Python (Optional for GUI or Future Enhancements)**
   If you want to extend the functionality with a graphical user interface (GUI) or other advanced features such as machine learning models, you can use Python alongside Scilab.
   - **Libraries**:
     - **NumPy**: Used for numerical operations and matrix manipulations.
     - **Matplotlib (optional)**: For displaying images or creating additional visualization tools.

## 4. **Input Image File**
   You will need an input image file to run the project. Ensure that the file exists in the folder path specified in the script.

## 5. **File System Permissions**
   Ensure the folder where the images are saved has appropriate permissions to read and write files.

## 6. **Operating System**
   This project can be executed on Windows, macOS, or Linux systems, but make sure you have proper access to the directory paths used in the script.
