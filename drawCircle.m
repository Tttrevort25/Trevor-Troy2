function circleHandle = drawCircle(radius, xCenter, yCenter, colorCircle,widthCircle)
      linesegments = 50;
      angleResolution = 2*pi/linesegments;

      theta = [0 : angleResolution: 2*pi];

      sinTheta = sin(theta);
      cosTheta = cos(theta);

      x = radius*cosTheta;
      y = radius*sinTheta;
      z= ones(1,length(x));

      %calling getTranslate
      T = getTranslate (xCenter, yCenter);

      circleMatrix = [x;y;z];

      %Translated circle
      circleMatrix = T*circleMatrix;

      x = circleMatrix(1,:);
     y = circleMatrix(2,:);

      circleHandle = line(x,y);


      %set the color and the width of the line
      %set(circleHandle,'colorCircle' ,color);
      %set(circleHandle,'widthCircle' , width);


endfunction
