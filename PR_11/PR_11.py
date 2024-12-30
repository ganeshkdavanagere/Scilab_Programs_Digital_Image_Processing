from matplotlib import pyplot as plt
from skimage import io, color
import numpy as np

# Load the uploaded image
input_path = "input_football_color_histogram.png"
img = io.imread(input_path)

# Convert RGB to HSV
img_hsv = color.rgb2hsv(img)

# Extract the V (Value) channel
V = img_hsv[:, :, 2]

# Perform histogram equalization on the V channel
m, n = V.shape
V_flat = np.round(V * 255).astype(int)  # Scale to 0–255 for histogram computation
hist, _ = np.histogram(V_flat, bins=256, range=(0, 255))
pdf = hist / (m * n)
cdf = np.cumsum(pdf)
cdf_scaled = (cdf * 255).astype(np.uint8)
V_eq = cdf_scaled[V_flat]

# Replace the equalized V channel in the HSV image
img_hsv[:, :, 2] = V_eq / 255.0  # Scale back to 0–1

# Convert back to RGB
img_eq = color.hsv2rgb(img_hsv)

# Save the histogram-equalized image
output_path = "/mnt/data/color_histogram_equalized.png"
io.imsave(output_path, (img_eq * 255).astype(np.uint8))

# Display results
fig, ax = plt.subplots(1, 2, figsize=(12, 6))
ax[0].imshow(img)
ax[0].set_title("Original Image")
ax[0].axis('off')
ax[1].imshow(img_eq)
ax[1].set_title("Histogram Equalized Image")
ax[1].axis('off')
plt.tight_layout()
plt.show()

output_path
