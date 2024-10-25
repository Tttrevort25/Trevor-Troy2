function starfishHandle = drawStarfish (starfishradius,starfishxCenter,starfishyCenter,colorStarfish,widthStarfish)

      linesegments = 50;
      angleResolution = 2*pi/linesegments;
      theta = [0 : angleResolution: 2*pi];
      teethSize = 5;

      sinTheta = sin(theta);
      cosTheta = cos(theta);

      x = starfishradius*cosTheta;
      y = starfishradius*sinTheta;
      z= ones(1,length(x));

      %calling getTranslate
      T = getTranslate (starfishxCenter, starfishyCenter);

      circleMatrix = [x;y;z];

      %Translated circle
      circleMatrix = T*circleMatrix;

      x = circleMatrix(1,:);
      y = circleMatrix(2,:);

      starfishHandle = line(x,y);

       %mouth
##      xMouth = [x(length(x)-teethSize),starfishxCenter,x(teethSize)];
##      %yMouth = [y(length(y)-teethSize),yFish,y(teethSize)];
##      starfishHandle = line(x,y);


      %tail
      xTail(1) = x(round(length(x)/2));
      yTail(1) = y(round(length(y)/2));

      xTail(2) = xTail(1) - starfishradius;
      yTail(2) = yTail(1) + starfishradius;

       xTail(3) = xTail(1) - starfishradius;
       yTail(3) = yTail(1) - starfishradius;


      xTail(4) = xTail(1);
      yTail(4) = yTail(1);

endfunction
