% MA 3457 / CS 4033 (B-Term 2018)
% Student: Vandana Anand
%Homework 6 Problem 2b and 2c

format long
%% 2b
f1=@(t,y)(2-2*t*y)/(power(t,2)+1);

disp("h=0.5")
[t1,w1]=eulers(0,1, 1, f1, 0.5)
disp("h=0.25")
[t2,w2]=eulers(0,1, 1, f1, 0.25)
disp("h=0.1")
[t3,w3]=eulers(0,1, 1, f1, 0.1)
%% 2c 

f2=@(t) (2.*t+1)./(t.^2+1);

disp("h values")
%true values at h=0.5
h1=f2(t1)

%true values at h=0.25
h2=f2(t2)

%true values at h=0.1
h3=f2(t3)


disp("Absolute error values")
%absolute error values at h=0.5
abserror1=abs(h1-w1)

%absolute error values at h=0.25
abserror2=abs(h2-w2)

%absolute error values at h=0.1
abserror3=abs(h3-w3)


%plots
figure(1);
plot1= plot(t1, abserror1, '-b'); hold on;
plot2= plot(t2, abserror2, '-r');
plot3= plot(t3, abserror3, '-g'); hold off;
title("HW6 Problem 2c")
xlabel("t values")
ylabel("absolute error")

