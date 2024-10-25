%this is code for my bouy

function crabHandle = drawCrab(crabSize,crabColor,crabWidth,clock,crabX,crabY,crabTheta)

 %gets the body parts of the squid
  crab = getcrab (crabSize,crabColor,crabWidth,clock);

  R = getRotate (crabTheta);

  crab = R*crab;

  %translation
  T = getTranslate(crabX, crabY);
  crab = T*crab;

 %draw squid body points
  p1 = crab(:,1);
  p2 = crab(:,2);
  p3 = crab(:,3);
  p4 = crab(:,4);
  p5 = crab(:,5);
##  p6 = crab(:,6);
##  p7 = crab(:,7);
  handle1 = drawLine(p1,p2,crabColor,crabWidth);
  handle2 = drawLine(p2,p3,crabColor,crabWidth);
  handle3 = drawLine(p3,p1,crabColor,crabWidth);
  handle4 = drawLine(p4,p5,crabColor,crabWidth);
##  handle5 = drawLine(p4,p6,crabColor,crabWidth);
##  handle6 = drawLine(p4,p7,crabColor,crabWidth);


  crabHandle = [handle1, handle2, handle3,handle4];
endfunction
