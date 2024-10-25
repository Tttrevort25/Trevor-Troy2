
function [newX,newY] = checkboundary (X,Y,oceanWidth,oceanHeight,objectRadius)

newX = X;
newY = Y;

  if(X > oceanWidth - objectRadius) % left
  newX = objectRadius;

  elseif(X < objectRadius) % right check
  newX = oceanWidth - objectRadius;
endif

%check for Y
if (Y < objectRadius)
  newY = oceanHeight - objectRadius;

elseif (Y > oceanHeight - objectRadius)
  newY = objectRadius;
  endif
endfunction

