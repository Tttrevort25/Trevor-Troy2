function [height,width] = drawOcean(imageName)
  %remove all figures
  clf

  %create a figure
  figure(1);

  %read image
  image = imread(imageName);
  [height,width] = size(image);

  % display image
  imshow(imageName);

endfunction
