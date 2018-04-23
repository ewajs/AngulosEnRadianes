function [ str ] = moviearco(angulolim)
%MOVIEARCO Pelicula de arco creciente de radiolim hasta angulolim
%   Detailed explanation goes here
t = 0:angulolim/100:angulolim;
for n = 1:101
    grafarco(t(n));
    %axis([-1.1 1.1 -1.1 1.1]);
    M(n) = getframe(gca,[0 0 345 345]);
end
movie2gif(M,'arco-radiobyEwajs','LoopCount',Inf);
movieview(M);
end

