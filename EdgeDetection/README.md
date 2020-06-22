Write a function named detect_edges, which takes a grayscale image as input and outputs the edges of that image as another 
image.
A simple way to perform edge detection is by using a two pass approach:

1. one pass through the image to look for horizontal edges and

2. one pass through the image to look for vertical edges.

The result of these two passes is then averaged to yield the final image.

Try rewriting both detect_edges to use vectorisation instead of loops. Investigate the difference in execution time between your original code and the vectorised code.
Call these functions detect_edges_vectorised.
