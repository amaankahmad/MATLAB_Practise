xValue=1000;
Fx=sqrt(xValue);
% Differentiation of Fx from first principles
h=1;
syms x;
fpeq=(Fx*(xValue+h)-Fx*(xValue))/h; % Differentiation from first principles equation
current=fpeq;
previous=0;
while abs(current-previous)>=0.0001 % Precision of 4dp reached
    previous=current; % Store value before change
    h=h*0.8; % Step change - decreasing h by 20%
    current=fpeq; % Current value from equation
end
disp(previous); % Value of first derivative
disp(h); % Step size


