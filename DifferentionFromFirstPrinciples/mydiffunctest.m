xValue=1000;
Fx=@(x) sqrt(x);
% Differentiation of Fx from first principles
[value,step]=MyDifferentiationFunc(Fx,xValue);
disp([value,step]);

