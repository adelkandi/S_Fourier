% Clean :
clc
close all 
clear all 

% Inputs
A = input('Give the Amplitude A value: ');
N = input('Give the N value: ');
f0 = input ('Give the frequancy f0 value: ');
pas = input('Give the jump  pas value: ');
t = 0:pas:N ;

% Signal x(t) function :
x = A*square(2*pi*f0*t);
subplot(2,1,1);
plot(t,x,'r');
xlabel('Time(s)');
ylabel('x(t)');
title('Signal x(t)');
grid on

% Fourier series complexe methode :
w = 2*pi*f0;
k = input('Give the k value: ');
Cn = 0; 
for n=1:k
    if mod(n,2)==0
        % Nothing
    elseif mod(n,2)==1
        Cn = Cn+(1/(1i*n*pi))*(1-cos(n*pi))*exp(1i*n*w*t);   
    end
end

%plot the generated signal x(t) :
subplot(2,1,2);
plot(t,Cn,'m');
xlabel('Time(s)');
ylabel('x1(t)');
title('Signal x1(t) generated ');
grid on 

%End.

