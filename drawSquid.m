function squidHandle = drawSquid(sizeSquid,color,width,clock,squidX,squidY,squidTheta)


 %gets the body parts of the squid
  squid = getSquid (sizeSquid,clock);

 R = getRotate (squidTheta);

  squid = R*squid;

  %translation
  T = getTranslate(squidX, squidY);
  squid = T*squid;

 %draw squid body points
  p1 = squid(:,1);
  p2 = squid(:,2);
  p3 = squid(:,3);
  handle1 = drawLine(p1,p2,color,width);
  handle2 = drawLine(p2,p3,color,width);
  handle3 = drawLine(p3,p1,color,width);


 %draw squid left leg
  p4 = squid(:,4);
  p5 = squid(:,5);
  p6 = squid(:,6);
  handle4 = drawLine(p4,p5,color,width);
  handle5 = drawLine(p5,p6,color,width);

 %draw squid right leg
  legseparation = sizeSquid
   p7 = squid(:,7);
   p8 = squid(:,8);
   p9 = squid(:,9);
  handle6 = drawLine(p7,p8,color,width);
  handle7 = drawLine(p8,p9,color,width);

  squidHandle = [handle1, handle2, handle3, handle4, handle5, handle6, handle7];


endfunction
