function [ str ] = grafarco(angulo)
%GRAFARCO Grafica un arco del radio y ángulo especificados.
%   Detailed explanation goes here
if (abs(angulo) > 2*pi)
    str = 'Angulo especificado mayor a una vuelta';
    return;
end
radio = 1;
t = 0:angulo/1000:angulo; %Resolución constante.
X1 = 0:radio/1000:radio; %Resolución constante.
Y1 = zeros(1,1001);
plot(X1,Y1,'b','LineWidth',2); %Graficar angulo = 0.

hold on;
if (angulo == 0)
     return %Nada más por hacer.
end
arcoX = radio*cos(t);
arcoY = radio*sin(t);
xlim = radio*cos(angulo); %Proyección del radio en angulo.
X2 = 0:xlim/1000:xlim; %Resolución constante.
Y2 = (arcoY(1001)/arcoX(1001)).*X2; %Y del radio en angulo.
Xrecta = xlim:0.001:radio; %dominio de la recta que une los radios. Atención a xlim, sale del gráfico.
Yrecta = -(Xrecta-radio)/tan(angulo/2); %Se demuestra fácilmente la ecuación.
LongRecta = ((radio-xlim)^2+(Yrecta(1))^2)^0.5; %Yrecta(1) es el primer elemento (más alto), la diferencia se demuestra desde el gráfico.
LongArco = angulo*radio; %definición del radián.
Ratio = LongRecta/LongArco; %Siempre >1, cuando -> 1: Aproximación paraxial válida.
plot(arcoX,arcoY,'green','LineWidth',2);
plot(arcoX./7,arcoY./7, 'red','LineWidth',2);
plot(X2,Y2,'b','LineWidth',2);
%plot(Xrecta,Yrecta,'green','LineWidth',3);
axis([-radio radio -radio radio]);
axis equal;
angulo = angulo/pi;
text(arcoX(1)./7+.02,arcoY(1)./7+.055,['Ángulo = ' num2str(angulo) '\pi rad']);
%text(arcoX(1)./7-.025,arcoY(1)./7-.065,['Segmento/Arco = ' num2str(Ratio)]);
text(0.3,-1,'Por Ezequiel Wajs');
text(-1,-.8,['Radio = 1 cm']);
text(-1,-.9,['Ángulo = ' num2str(angulo) '\pi rad']);
text(-1,-1,['Arco = ' num2str(radio*pi*angulo) ' cm'])
axis equal;
axis([-1.1 1.1 -1.1 1.1]);
print -djpeg100 'arcoEwajs'
hold off;
str = 'Gráfico OK!';
end

