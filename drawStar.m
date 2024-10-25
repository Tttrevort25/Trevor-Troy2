function starHandle = drawStar(pt1,pt2,pt3,pt4,pt5,pt6,starColor,starWidth)

  %extract the x components from the points  pt1 & pt2
  x = [pt1(1) , pt2(1)];
  x = [pt3([[pt1(1) + pt2(1)]/2]), pt4([[pt1(1) + - pt2(1)]/2])];

  %extract the y components from the points  pt1 & pt2
   y = [pt1(2) , pt2(2)];
   x = [pt3([[pt1(2) + pt2(2)]/2]), pt4([[pt1(2) + - pt2(2)]/2])];


  %draw the line between pt1 and pt2
starHandle = line (x,y);

%set the color and the width of the line
set(starHandle,'Color' ,starColor);
set(starHandle,'LineWidth' , starWidth);

endfunction
