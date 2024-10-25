function animateSquid()

imageName = "OceanImage.png";
[height,w] = drawOcean(imageName);
height = 1317
w = 2048

%squid
sizeSquid = 50;
color = [.2 .1 .6];
width = 4;

%fish
%radiusFish,xFish,yFish,lineColor,linewidthFish
radiusFish = 40;
xFish = 200;
yFish = 700;
lineColorFish = [.3 .1 .2];
linewidthFish = 2;
fishstep = 30;
fishystep = 20;

%bouy
%crabHandle = drawCrab(crabSize,crabColor,crabWidth,clock,crabX,crabY,crabTheta)
crabSize = 50;
crabColor = [.2 .6 .1];
crabWidth = 4;
crabX = 300;
crabY = 50;
crabTheta = pi/2;

%Initial position
squidX = 50;
squidY = 40;
squidTheta = 0;

% Step and Amount to be Rotated
  squidMove = 100;
  squidDeltaTheta = pi/3;

  % Bubble Info
  radius = 50;
  colorCircle = [.2 .3 .1];
  widthCircle = 5;
  xCenter = 100;
  yCenter = 800;

   % Multiple Bubbles
  bubbleNumber= 5;
  bubbleMaxRadius= 20;
  bubbleMinRadius = 5;
  bubbleStep = 5;
##
%bubbles

bubbleMaxRadius = 50;
bubbleLinewidth = 3;
bubbleLinecolor = [.2 .2 .3];
bubbleStep = 50;
bubbleMinRadius = 5;
numBubbles = 7;

%Create Random Bubbles
for i = 1 : numBubbles % bubble set
  radius(i) = rand() * bubbleMaxRadius + bubbleMinRadius;
  xCenter(i) =  w*rand();
  yCenter(i) = height - radius(i);
endfor

%game clock
gameClock = 0;

% Animate Loop

while(true)
%for (clock = 1:500)

  squidX = squidX + squidMove/2;
  squidY = squidY + squidMove/2;

  %updating squid location & heading
  squidTheta = squidTheta + squidDeltaTheta;

  squidX = squidX + squidMove*cos(squidTheta);
  squidY = squidY + squidMove*sin(squidTheta);

%ascending speed
  for i = 1 : numBubbles
    yCenter(i) = yCenter(i) - bubbleStep - (i*9);
  endfor

  %randmoizes spawn location
  for i = 1 : numBubbles
    if(yCenter(i)<3*bubbleMaxRadius)
    yCenter(i) = height - 3*bubbleMaxRadius;
    xCenter(i) = rand()* w;
    radius(i) = rand()*bubbleMaxRadius + bubbleMinRadius;
  endif
endfor

%check if the squid is in the ocean
[squidX,squidY] = checkboundary (squidX,squidY,w,height,sizeSquid);

 %squid handle
 h = drawSquid(sizeSquid,color,width,clock,squidX,squidY,squidTheta);


 %check if the bubble is in the ocean
 [xCenter,yCenter] = checkboundary (xCenter,yCenter,w,height,radius);

for i = 1 : numBubbles
    circleHandle(i) = drawCircle(radius(i), xCenter(i), yCenter(i), colorCircle,widthCircle);
  endfor

  %fish
   fishHandle = drawFish (radiusFish,xFish,yFish,lineColorFish,linewidthFish);

##     % move fish x-coordinate
##   xFish = xFish + fishstep;
##
##   %move fish y-coordinate
##   yFish = yFish + fishystep;
##
##   % check fish boundary
##   [xFish,yFish] = checkboundary (xFish,yFish,w,height,radiusFish);

   %by crab i mean buoy
   crabHandle = drawCrab(crabSize,crabColor,crabWidth,clock,crabX,crabY,crabTheta);

   %move bouy
   crabX = crabX + 50;

   %move bouy down
   crabY = crabY + 25;

   % check buoy boundary
   [crabX,crabY] = checkboundary (crabX,crabY,500,150,crabSize);

  pause(.2);
  delete(circleHandle);
  %delete(Fishhandle);
  delete(crabHandle);
  delete(h);

endwhile

endfunction

