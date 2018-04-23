function [ str ] = grafarco(angulo)
%GRAFARCO Grafica un arco del radio y �ngulo especificados.
%   Detailed explanation goes here
if (abs(angulo) > 2*pi)
    str = 'Angulo especificado mayor a una vuelta';
    return;
end
radio = 1;
t = 0:angulo/1000:angulo; %Resoluci�n constante.
X1 = 0:radio/1000:radio; %Resoluci�n constante.
Y1 = zeros(1,1001);
plot(X1,Y1,'b','LineWidth',2); %Graficar angulo = 0.

hold on;
if (angulo == 0)
     return %Nada m�s por hacer.
end
arcoX = radio*cos(t);
arcoY = radio*sin(t);
xlim = radio*cos(angulo); %Proyecci�n del radio en angulo.
X2 = 0:xlim/1000:xlim; %Resoluci�n constante.
Y2 = (arcoY(1001)/arcoX(1001)).*X2; %Y del radio en angulo.
Xrecta = xlim:0.001:radio; %dominio de la recta que une los radios. Atenci�n a xlim, sale del gr�fico.
Yrecta = -(Xrecta-radio)/tan(angulo/2); %Se demuestra f�cilmente la ecuaci�n.
LongRecta = ((radio-xlim)^2+(Yrecta(1))^2)^0.5; %Yrecta(1) es el primer elemento (m�s alto), la diferencia se demuestra desde el gr�fico.
LongArco = angulo*radio; %definici�n del radi�n.
Ratio = LongRecta/LongArco; %Siempre >1, cuando -> 1: Aproximaci�n paraxial v�lida.
plot(arcoX,arcoY,'green','LineWidth',2);
plot(arcoX./7,arcoY./7, 'red','LineWidth',2);
plot(X2,Y2,'b','LineWidth',2);
%plot(Xrecta,Yrecta,'green','LineWidth',3);
axis([-radio radio -radio radio]);
axis equal;
angulo = angulo/pi;
text(arcoX(1)./7+.02,arcoY(1)./7+.055,['�ngulo = ' num2str(angulo) '\pi rad']);
%text(arcoX(1)./7-.025,arcoY(1)./7-.065,['Segmento/Arco = ' num2str(Ratio)]);
text(0.3,-1,'Por Ezequiel Wajs');
text(-1,-.8,['Radio = 1 cm']);
text(-1,-.9,['�ngulo = ' num2str(angulo) '\pi rad']);
text(-1,-1,['Arco = ' num2str(radio*pi*angulo) ' cm'])
axis equal;
axis([-1.1 1.1 -1.1 1.1]);
print -djpeg100 'arcoEwajs'
hold off;
str = 'Gr�fico OK!';
end

