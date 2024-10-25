%this is code for my bouy

function crab = getcrab (crabSize,crabColor,crabWidth,clock)
 %draw squid body points
  p1 = [crabSize ; 0 ; 1];
  p2 = [0 ; crabSize ; 1];
  p3 = [0 ; -crabSize; 1];

  p4 = [0;0;1];
  p5 = [-8*crabSize/2;0;1];


##  p6 = [-crabSize; 0 - crabSize; 1];
##  p7 = [0; crabSize/2; 1];

##  %draw squid left leg
##  p4 = [-2*sizeSquid; sizeSquid/2; 1];
##  p5 = [-sizeSquid; 0; 1];
##  p6 = [0; sizeSquid/2; 1];
##
## %draw squid right leg
##  legseparation = sizeSquid;
##  p7 = [0; sizeSquid/2 - legseparation; 1];
##  p8 = [-sizeSquid; 0 - legseparation; 1];
##  p9 = [-2*sizeSquid; sizeSquid/2 - legseparation; 1];

  crab = [p1,p2,p3,p4,p5];
endfunction
