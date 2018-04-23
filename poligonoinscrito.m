function str = poligonoinscrito( n )
%POLIGONOINSCRITO grafica un polígono regular de n lados inscrito en una circunsferencia. Informa la relación de superficies y relación radio superficie del polígono.
%   Detailed explanation goes here
%Resolución y Escalas START ------------------------
radio = 2;
t = 0:0.01:2*pi;
%Resolución y Escalas END --------------------------
%Cálculo de ubicaciones de coordenadas START -------
X = radio*sin(t);
Y = radio*cos(t);
for a=1:(n+1)
   Xpol(a) = radio*sin(a*2*pi/n);
   Ypol(a) = radio*cos(a*2*pi/n);
end
%Cálculo de ubicaciones de coordenadas END ---------
%Cálculo de Superficies y Relaciones START ---------
SupCirculo = pi*radio*radio;
SupPol = n*radio*radio*cos(pi/n)*cos(pi/n)*sin(pi/n); %Se deduce fácilmente.
PerCirculo = 2*pi*radio;
PerPol = n*radio*sin(2*pi/n)/cos(pi/n);%Se deduce fácilmente.
SupRatio = SupPol/SupCirculo;
PerRatio = PerPol/PerCirculo;
PiSupRatio = SupPol/(radio*radio);
PiPerRatio = PerPol/(2*radio);
%Cálculo de Superficies y Relaciones END -----------
%Gráficos START--------------------------------------
fill(X,Y,[168/255 168/255 1]);
hold on;
fill(Xpol,Ypol,[1 137/255 137/255]);
AxeValores = [-radio*1.1 radio*1.1 -radio*2 radio*1.1];
axis(AxeValores);
plot(X,Y,'b','LineWidth',2)
plot(Xpol,Ypol,'r','LineWidth',2)
plot([0 Xpol(n)],[0 Ypol(n)],'k','LineWidth',2);
plot(0,0,'.k','MarkerSize',15);
axis equal;
text(0.05,0.5,'Radio');
text(-3.8,-2.41,['Superficie del Círculo = ' num2str(SupCirculo,'%.2f') ' u^2']);
text(-3.8,-2.81,['Perímetro del Círculo = ' num2str(PerCirculo,'%.2f') ' u']);
text(-3.8,-3.16,['Superficie del Polígono = ' num2str(SupPol,'%.2f') ' u^2']);
text(-3.8,-3.56,['Perímetro del Polígono = ' num2str(PerPol,'%.2f') ' u']);
text(-0.1,-2.31,['Sup. Pol./Sup. Circulo = ' num2str(SupRatio)]);
text(-0.1,-2.71,['Per. Pol./Per. Circulo = ' num2str(PerRatio)]);
text(-0.1,-3.11,['Aprox. de \pi por Perímetro = ' num2str(PiPerRatio)]);
text(-0.1,-3.51,['Aprox. de \pi por Superficie = ' num2str(PiSupRatio)]);
text(-3.8,1.8,['Polígono de ' num2str(n) ' lados.']);
text(1.7,1.8,['Por Ezequiel Wajs']);
hold off;
%Gráficos END-----------------------------------------
end

