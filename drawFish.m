function fishHandle = drawFish (radiusFish,xFish,yFish,lineColorFish,linewidthFish)

      linesegments = 50;
      deltaTheta = 2*pi/linesegments;
      mouthTheta = pi/12;
      theta = [mouthTheta:deltaTheta: 2*pi-mouthTheta];
      teethSize = 5;

      % x and y coordinates of the unit circle.
      sinTheta = sin(theta);
      cosTheta = cos(theta);

      %x and y coordinatesof the circle of radius r about the
      x = radiusFish*cosTheta;
      y = radiusFish*sinTheta;
      z= ones(1,length(x));

       %create a matrix with all the x
      circleMatrix = [x;y;z];

      %calling getTranslate
      T = getTranslate (xFish, yFish);

      %Translated circle
      circleMatrix = T*circleMatrix;

      %extract the x and y coordinates
      x = circleMatrix(1,:);
      y = circleMatrix(2,:);

      %circle of radius r about the xCenter,yCenter
      fishHandle = line(x,y);


      %mouth
      xMouth = [x(length(x)-teethSize),xFish,x(teethSize)];
      yMouth = [y(length(y)-teethSize),yFish,y(teethSize)];
      fishMouthHandle = line(xMouth,yMouth);


      %tail
      xTail(1) = x(round(length(x)/2));
      yTail(1) = y(round(length(y)/2));

      xTail(2) = xTail(1) - radiusFish;
      yTail(2) = yTail(1) + radiusFish;

       xTail(3) = xTail(1) - radiusFish;
       yTail(3) = yTail(1) - radiusFish;


      xTail(4) = xTail(1);
      yTail(4) = yTail(1);

      fishTailHandle = line(xTail,yTail);

      Fishhandle = [fishHandle,fishMouthHandle, fishTailHandle];

##      set(fishHandle, 'Color',lineColorFish);
##      set(fishHandle,'LineWidth', linewidthFish);


endfunction
