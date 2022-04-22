clear
y0=[0.5 0]';
tspan=[0 4*pi*sqrt(1/9.8)];
[t,y]=ode45('cyc',tspan,y0);
u=0:0.01:2*pi;
plot3(u-sin(u),0*u,cos(u)-1);
hold on
comet3(y(:,1)-sin(y(:,1)),0*y(:,1),cos(y(:,1))-1);
hold off
xlabel('x');ylabel('y');zlabel('z');