clear all;
n = 1
% for t = 3:6
%     poligonoinscrito(t);
%     M(t-2) = getframe;
% end
% for t = 3:36
%     poligonoinscrito(t*3);
%     M(t+2) = getframe;
% end
poligonoinscrito(3);
M(n) = getframe;
n = n + 1;
poligonoinscrito(4);
M(n) = getframe;
n = n + 1;
poligonoinscrito(5);
M(n) = getframe;
n = n + 1;
poligonoinscrito(6);
M(n) = getframe;
n = n + 1;
poligonoinscrito(7);
M(n) = getframe;
n = n + 1;
poligonoinscrito(10);
M(n) = getframe;
n = n + 1;
poligonoinscrito(15);
M(n) = getframe;
n = n + 1;
poligonoinscrito(20);
M(n) = getframe;
n = n + 1;
poligonoinscrito(30);
M(n) = getframe;
n = n + 1;
poligonoinscrito(40);
M(n) = getframe;
n = n + 1;
poligonoinscrito(50);
M(n) = getframe;
n = n + 1;
poligonoinscrito(70);
M(n) = getframe;
n = n + 1;
poligonoinscrito(100);
M(n) = getframe;
n = n + 1;
poligonoinscrito(150);
M(n) = getframe;
n = n + 1;
poligonoinscrito(200);
M(n) = getframe;
movie2gif(M,'PiAproxEwajs','DelayTime',3,'LoopCount',Inf);
movieview(M);