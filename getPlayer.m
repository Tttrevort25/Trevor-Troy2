function player = getPlayer (bodySize,headSize,netSize)

  %body
  bodypt1 = [-bodySize;0;1];
  bodypt2 = []
  bodypt7 = [bodySize;0;1];

  body = [bodypt1,bodypt2];

  %head
  head = getCircle(headSize,0);
  T = getTranslate(bodySize+headSize,0);
  head = T*head;

  %arm

  %legs

  %tank

  %player
  player = [head,body,leg,tank,net];

%player = [head
endfunction
