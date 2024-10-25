function star = getStar (starSize,color,width,clock)

  %carries out modular division
  frame = mod(clock, 2);

  if(frame == 0)

 %then
 %this is when its even

 %draw star body points
  p1 = [starSize ; 0 ; 1];
  p2 = [0 ; starSize ; 1];
  p3 = [0 ; -starSize; 1];
  p4 = [0; -starSize/2;1];

  %connection points
  %handle1 = drawLine(p1,p2,color,width);
  %handle2 = drawLine(p2,p3,color,width);
  %handle3 = drawLine(p3,p1,color,width);


 %draw squid left leg
  %p4 = [0; starSize/2; 1];
  p5 = [-starSize; 0; 1];
  p6 = [-2*starSize; starSize/2; 1];

  %connection points
  %handle4 = drawLine(p4,p5,color,width);
  %handle5 = drawLine(p5,p6,color,width);

 %draw squid right leg
  legseparation = starSize;
  p7 = [0; starSize/2 - legseparation; 1];
  p8 = [-starSize; 0 - legseparation; 1];
  p9 = [-2*starSize; starSize/2 - legseparation; 1];

  %connection points
  %handle6 = drawLine(p7,p8,color,width);
  %handle7 = drawLine(p8,p9,color,width);

  elseif(frame == 1 )

 legseparation = starSize;

 %this is when its odd

 %draw squid body points
  p1 = [starSize ; 0 ; 1];
  p2 = [0 ; starSize ; 1];
  p3 = [0 ; -starSize; 1];

  %connection points
  %handle1 = drawLine(p1,p2,color,width);
  %handle2 = drawLine(p2,p3,color,width);
  %handle3 = drawLine(p3,p1,color,width);


 %draw squid left leg
  %p4 = [0; starSize/2; 1];
  p5 = [-starSize; legseparation; 1];
  p6 = [-2*starSize; starSize/2; 1];

  %connection points
  %handle4 = drawLine(p4,p5,color,width);
  %handle5 = drawLine(p5,p6,color,width);

 %draw squid right leg

  p7 = [0; starSize/2 - legseparation; 1];
  p8 = [-starSize; 0 ; 1];
  p9 = [-2*starSize; starSize/2 - legseparation; 1];

  %connection points
  %handle6 = drawLine(p7,p8,color,width);
  %handle7 = drawLine(p8,p9,color,width);

  else

  legseparation = starSize;

% original position

%draw squid body points
  p1 = [starSize ; 0 ; 1];
  p2 = [0 ; starSize ; 1];
  p3 = [0 ; -starSize ; 1];

  %connection points
  %handle1 = drawLine(p1,p2,color,width);
  %handle2 = drawLine(p2,p3,color,width);
  %handle3 = drawLine(p3,p1,color,width);


 %draw squid left leg
  %p4 = [0; starSize/2; 1];
  p5 = [-starSize; 0; 1];
  p6 = [-2*starSize; starSize/2; 1];

  %connection points
  %handle4 = drawLine(p4,p5,color,width);
  %handle5 = drawLine(p5,p6,color,width);

 %draw squid right leg

  p7 = [0; starSize/2 - legseparation; 1];
  p8 = [-starSize; 0 - legseparation; 1];
  p9 = [-2*starSize; starSize/2 - legseparation; 1];

  %connection points
  %handle6 = drawLine(p7,p8,color,width);
  %handle7 = drawLine(p8,p9,color,width);


endif

  star = [p1,p2,p3,p5,p6,p7,p8,p9];

endfunction
