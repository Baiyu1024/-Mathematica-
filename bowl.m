clear
y0=[(1/2)*pi 0 0 2]';
tspan=[0 50];
[t,y]=ode45('bal',tspan,y0);
theta=pi/2:pi/50:pi;
phi=0:pi/50:2*pi;
[tt,pp]=meshgrid(theta,phi);
X=sin(tt).*cos(pp);
Y=sin(tt).*sin(pp);
Z=cos(tt);
surf(X,Y,Z);
colormap(gray);
shading interp;
view([0,80])
hold on
comet3(sin(y(:,1)).*cos(y(:,3)),sin(y(:,1)).*sin(y(:,3)),cos(y(:,1)));
xlabel('x');ylabel('y');zlabel('z');