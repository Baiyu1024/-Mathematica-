function y1=bal(t,y)
y1=[y(2) y(4)^2*sin(y(1))*cos(y(1))+9.8*sin(y(1)) y(4) -(2*y(4)*y(2)*cos(y(1)))/sin(y(1))]';
end