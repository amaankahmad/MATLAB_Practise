function [Y,step] = MyDifferentiationFunc(Fx,xValue)
% Differentiation of Fx from first principles
h=1;
fpeq=(Fx(xValue+h)-Fx(xValue))/h; % Differentiation from first principles equation
current=fpeq;
previous=0;
while abs((current-previous)/previous)>=0.0001 % Precision of 4dp reached
    previous=current; % Store value before change
    h=h*0.1; % Step change - decreasing h by x10
    current=fpeq; % Current value from equation
end
Y=previous; % Value of first derivative
step=h; % Step size
end

