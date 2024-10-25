function squid = getSquid (sizeSquid,color,width,clock)

  %carries out modular division
  frame = mod(clock, 2);

  if(frame == 0)

 %then
 %this is when its even

 %draw squid body points
  p1 = [sizeSquid ; 0 ; 1];
  p2 = [0 ; sizeSquid ; 1];
  p3 = [0 ; -sizeSquid; 1];
##
##  %draw squid right leg
##  legseparation = sizeSquid;
##  p7 = [0; sizeSquid/2 - legseparation; 1];
##  p8 = [-sizeSquid; 0 - legseparation; 1];
##  p9 = [-2*sizeSquid; sizeSquid/2 - legseparation; 1];
##
##  %draw squid left leg
##  p10 = [sizeSquid/2 ; 0 ; 1];
##  p12 = [0 ; sizeSquid/2 ; 1];
##  p13 = [0 ; -sizeSquid/2; 1];




 %draw squid left leg
  p4 = [-2*sizeSquid; sizeSquid/2; 1];
  p5 = [-sizeSquid; 0; 1];
  p6 = [0; sizeSquid/2; 1];

  %connection points
  %handle4 = drawLine(p4,p5,color,width);
  %handle5 = drawLine(p5,p6,color,width);

 %draw squid right leg
  legseparation = sizeSquid;
  p7 = [0; sizeSquid/2 - legseparation; 1];
  p8 = [-sizeSquid; 0 - legseparation; 1];
  p9 = [-2*sizeSquid; sizeSquid/2 - legseparation; 1];

  %connection points
  %handle6 = drawLine(p7,p8,color,width);
  %handle7 = drawLine(p8,p9,color,width);

  elseif(frame == 1 )

 legseparation = sizeSquid;

 %this is when its odd

 %draw squid body points
  p1 = [sizeSquid ; 0 ; 1];
  p2 = [0 ; sizeSquid ; 1];
  p3 = [0 ; -sizeSquid; 1];

  %connection points
  %handle1 = drawLine(p1,p2,color,width);
  %handle2 = drawLine(p2,p3,color,width);
  %handle3 = drawLine(p3,p1,color,width);


 %draw squid left leg
  p4 = [0; sizeSquid/2; 1];
  p5 = [-sizeSquid; legseparation; 1];
  p6 = [-2*sizeSquid; sizeSquid/2; 1];

  %connection points
  %handle4 = drawLine(p4,p5,color,width);
  %handle5 = drawLine(p5,p6,color,width);

 %draw squid right leg

  p7 = [0; sizeSquid/2 - legseparation; 1];
  p8 = [-sizeSquid; 0 ; 1];
  p9 = [-2*sizeSquid; sizeSquid/2 - legseparation; 1];

  %connection points
  %handle6 = drawLine(p7,p8,color,width);
  %handle7 = drawLine(p8,p9,color,width);

  else

  legseparation = sizeSquid;

% original position

%draw squid body points
  p1 = [sizeSquid ; 0 ; 1];
  p2 = [0 ; sizeSquid ; 1];
  p3 = [0 ; -sizeSquid ; 1];

  %connection points
  %handle1 = drawLine(p1,p2,color,width);
  %handle2 = drawLine(p2,p3,color,width);
  %handle3 = drawLine(p3,p1,color,width);


 %draw squid left leg
  p4 = [0; sizeSquid/2; 1];
  p5 = [-sizeSquid; 0; 1];
  p6 = [-2*sizeSquid; sizeSquid/2; 1];

  %connection points
  %handle4 = drawLine(p4,p5,color,width);
  %handle5 = drawLine(p5,p6,color,width);

 %draw squid right leg

  p7 = [0; sizeSquid/2 - legseparation; 1];
  p8 = [-sizeSquid; 0 - legseparation; 1];
  p9 = [-2*sizeSquid; sizeSquid/2 - legseparation; 1];

  %connection points
  %handle6 = drawLine(p7,p8,color,width);
  %handle7 = drawLine(p8,p9,color,width);


endif

  squid = [p1,p2,p3,p4,p5,p6,p7,p8,p9];


endfunction
