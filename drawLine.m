
function graphicsHandle = drawLine (pt1, pt2, color, width)

  %extract the x components from the points  pt1 & pt2
  x = [pt1(1) , pt2(1)];
  %extract the y components from the points  pt1 & pt2
   y = [pt1(2) , pt2(2)];

  %draw the line between pt1 and pt2
graphicsHandle = line (x,y);

%set the color and the width of the line
set(graphicsHandle,'Color' ,color);
set(graphicsHandle,'LineWidth' , width);

endfunction
