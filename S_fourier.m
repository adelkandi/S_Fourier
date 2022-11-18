% Clean 
clc 
clear all
close all 

% Inputs
A = input('Give the Amplitude A value: ');
N = input('Give the N value: ');
f0 = input ('Give the frequancy f0 value: ');
pas = input('Give the jump  pas value: ');
t = 0:pas:N ;

% Signal x(t) function :
x = A*square(2*pi*f0*t);
subplot(2,1,1)
plot(t,x,'r')
grid on 

% fourier series : 
k = input('Give the value of k: ');
X = 0;
w = 2*pi*f0;
Cn = 0;

for n=0 :k
    X = X+(4/(2*(2*n+1)*pi))*(sin((2*n+1)*pi*t));
end

subplot(2,1,2)
plot(t,X,'m')
grid on 

%End.







