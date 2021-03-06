% 用于求解第 2 题积分式
%% a >= b / 2
clc; clear; close all;
tic
syms a b beta g r_12 x
int1 = 4 * pi * int(r_12^2 * ((-1) * 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)...
    + (exp(beta * g) - 1) * 2 * (4 * pi / 3 * a^3 - int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2))...
    + (-1) * (exp(beta * g) - 1)^2 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - (4 * pi / 3 * a^3 - int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)))), r_12, 0, b - a)...
    + 4 * pi * int(r_12^2 * ((-1) * 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)...
    + (exp(beta * g) - 1) * 2 * (int(pi * (a^2 - (a - x)^2), x, 0, a - (a^2 + r_12^2 - b^2) / 2 / r_12) + int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 + (a^2 + r_12^2 - b^2) / 2 / r_12) - 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2))...
    + (-1) * (exp(beta * g) - 1)^2 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - (int(pi * (a^2 - (a - x)^2), x, 0, a - (a^2 + r_12^2 - b^2) / 2 / r_12) + int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 + (a^2 + r_12^2 - b^2) / 2 / r_12) - int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)))), r_12, b - a, a)...
    + 4 * pi * int(r_12^2 * ((exp(beta * g) - 1) * 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)...
    + (-1) * (exp(beta * g) - 1)^2 * 2 * (int(pi * (a^2 - (a - x)^2), x, 0, a - (a^2 + r_12^2 - b^2) / 2 / r_12) + int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 + (a^2 + r_12^2 - b^2) / 2 / r_12) - 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2))...
    + (exp(beta * g) - 1)^3 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - (int(pi * (a^2 - (a - x)^2), x, 0, a - (a^2 + r_12^2 - b^2) / 2 / r_12) + int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 + (a^2 + r_12^2 - b^2) / 2 / r_12) - int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)))), r_12, a, b)
int1_factored = factor(int1)
collect(int1_factored(4), a)
toc
% 4*pi*((pi*a^6)/72 - (5*pi*b^6)/24 + (4*pi*a^3*b^3)/9 - (pi*a^4*b^2)/4 - (5*pi*a^6*exp(beta*g))/72 + (11*a^6*pi*exp(2*beta*g))/36 - (a^6*pi*exp(3*beta*g))/4 + (47*pi*b^6*exp(beta*g))/72 - (25*b^6*pi*exp(2*beta*g))/36 + (b^6*pi*exp(3*beta*g))/4 - (pi*a^2*b^4*exp(beta*g))/2 - (4*pi*a^3*b^3*exp(beta*g))/3 + (5*pi*a^4*b^2*exp(beta*g))/4 + (5*a^2*b^4*pi*exp(2*beta*g))/4 + (8*a^3*b^3*pi*exp(2*beta*g))/9 - (7*a^4*b^2*pi*exp(2*beta*g))/4 - (3*a^2*b^4*pi*exp(3*beta*g))/4 + (3*a^4*b^2*pi*exp(3*beta*g))/4) + 4*pi*((5*pi*b^6)/24 + (pi*a^2*b^4)/24 - (pi*a^3*b^3)/6 + (5*pi*a^4*b^2)/24 - (5*pi*a*b^5)/12 - (pi*a^5*b)/12 - (8*pi*a^6*exp(beta*g))/9 - (4*pi*b^6*exp(beta*g))/9 + (b^6*pi*exp(2*beta*g))/4 + (5*pi*a*b^5*exp(beta*g))/6 + (17*pi*a^5*b*exp(beta*g))/6 - (a*b^5*pi*exp(2*beta*g))/2 - (a^5*b*pi*exp(2*beta*g))/2 + (5*pi*a^2*b^4*exp(beta*g))/12 + (pi*a^3*b^3*exp(beta*g))/3 - (37*pi*a^4*b^2*exp(beta*g))/12 - (a^2*b^4*pi*exp(2*beta*g))/2 + a^3*b^3*pi*exp(2*beta*g) + (a^4*b^2*pi*exp(2*beta*g))/4) - 4*pi*((a - b)^6*(pi/72 + (pi*(2*exp(beta*g) - 2))/144 + (pi*(exp(beta*g) - 1)^2)/36) - (a - b)^4*((pi*a^2)/4 + (((pi*a^2)/2 + (pi*b^2)/2)*(exp(beta*g) - 1)^2)/2 + (a^2*pi*(2*exp(beta*g) - 2))/8) + (a - b)^3*((2*((2*pi*a^3)/3 - (2*b^3*pi)/3)*(exp(beta*g) - 1)^2)/3 - (4*pi*a^3)/9 + (2*a^3*pi*(2*exp(beta*g) - 2))/9))
% [-1/18, pi, pi, 162*a^5*b - 6*a*b^5 + 52*a^6*exp(beta*g) - 6*a^6*exp(2*beta*g) + 18*a^6*exp(3*beta*g) - 46*b^6*exp(beta*g) + 48*b^6*exp(2*beta*g) - 18*b^6*exp(3*beta*g) - 49*a^6 + 16*b^6 - 3*a^2*b^4 + 84*a^3*b^3 - 189*a^4*b^2 + 6*a*b^5*exp(beta*g) - 162*a^5*b*exp(beta*g) + 3*a^2*b^4*exp(beta*g) + 12*a^3*b^3*exp(beta*g) + 135*a^4*b^2*exp(beta*g) - 54*a^2*b^4*exp(2*beta*g) - 96*a^3*b^3*exp(2*beta*g) + 108*a^4*b^2*exp(2*beta*g) + 54*a^2*b^4*exp(3*beta*g) - 54*a^4*b^2*exp(3*beta*g)]
% (52*exp(beta*g) - 6*exp(2*beta*g) + 18*exp(3*beta*g) - 49)*a^6 + (162*b - 162*b*exp(beta*g))*a^5 + (135*b^2*exp(beta*g) + 108*b^2*exp(2*beta*g) - 54*b^2*exp(3*beta*g) - 189*b^2)*a^4 + (12*b^3*exp(beta*g) - 96*b^3*exp(2*beta*g) + 84*b^3)*a^3 + (3*b^4*exp(beta*g) - 54*b^4*exp(2*beta*g) + 54*b^4*exp(3*beta*g) - 3*b^4)*a^2 + (6*b^5*exp(beta*g) - 6*b^5)*a + 48*b^6*exp(2*beta*g) - 46*b^6*exp(beta*g) - 18*b^6*exp(3*beta*g) + 16*b^6

%% b / 3 <= a < b / 2
clc; clear; close all;
tic
syms a b beta g r_12 x
int2 = 4 * pi * int(r_12^2 * ((-1) * 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)...
    + (exp(beta * g) - 1) * 2 * (4 * pi / 3 * a^3 - 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2))...
    + (-1) * (exp(beta * g) - 1)^2 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - (4 * pi / 3 * a^3 - int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)))), r_12, 0, a)...
    + 4 * pi * int(r_12^2 * ((exp(beta * g) - 1) * 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)...
    + (-1) * (exp(beta * g) - 1)^2 * 2 * (4 * pi / 3 * a^3 - 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2))...
    + (exp(beta * g) - 1)^3 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - (4 * pi / 3 * a^3 - int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)))), r_12, a, b - a)...
    + 4 * pi * int(r_12^2 * ((exp(beta * g) - 1) * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)...
    + (-1) * (exp(beta * g) - 1)^2 * 2 * (int(pi * (a^2 - (a - x)^2), x, 0, a - (a^2 + r_12^2 - b^2) / 2 / r_12) + int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 + (a^2 + r_12^2 - b^2) / 2 / r_12) - 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2))...
    + (exp(beta * g) - 1)^3 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - (int(pi * (a^2 - (a - x)^2), x, 0, a - (a^2 + r_12^2 - b^2) / 2 / r_12) + int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 + (a^2 + r_12^2 - b^2) / 2 / r_12) - int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)))), r_12, b - a, 2 * a)...
    + 4 * pi * int(r_12^2 * ((-1) * (exp(beta * g) - 1)^2 * 2 * (int(pi * (a^2 - (a - x)^2), x, 0, a - (a^2 + r_12^2 - b^2) / 2 / r_12) + int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 + (a^2 + r_12^2 - b^2) / 2 / r_12))...
    + (exp(beta * g) - 1)^3 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - (int(pi * (a^2 - (a - x)^2), x, 0, a - (a^2 + r_12^2 - b^2) / 2 / r_12) + int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 + (a^2 + r_12^2 - b^2) / 2 / r_12)))), r_12, 2 * a, b)
int2_factored = factor(int2)
collect(int2_factored(4), a)
toc
% 4*pi*((2*pi*a^6*(exp(beta*g) - 1))/9 - (pi*(exp(beta*g) - 1)^2*(45*a^6 - 96*a^5*b + 15*a^4*b^2 + 112*a^3*b^3 - 45*a^2*b^4 + b^6))/36 - (pi*(exp(beta*g) - 1)^3*(45*a^6 - 96*a^5*b + 15*a^4*b^2 + 112*a^3*b^3 - 45*a^2*b^4 + b^6))/36 - (pi*(a - b)^6*(exp(beta*g) - 1))/144 + (8*pi*a^6*(exp(beta*g) - 1)^2)/9 + (4*pi*a^6*(exp(beta*g) - 1)^3)/3 - (pi*(a - b)^6*(exp(beta*g) - 1)^2)/36 - (pi*(a - b)^6*(exp(beta*g) - 1)^3)/36 + (pi*a^2*(a - b)^4*(exp(beta*g) - 1))/8 + (2*pi*a^3*(a - b)^3*(exp(beta*g) - 1))/9 + (32*pi*a^3*b^3*(exp(beta*g) - 1)^3)/9 - 4*pi*a^4*b^2*(exp(beta*g) - 1)^3 + (pi*a^2*(a - b)^4*(exp(beta*g) - 1)^2)/2 + (8*pi*a^3*(a - b)^3*(exp(beta*g) - 1)^2)/9 + (pi*a^2*(a - b)^4*(exp(beta*g) - 1)^3)/4 + (4*pi*a^3*(a - b)^3*(exp(beta*g) - 1)^3)/9 + (pi*b^2*(a - b)^4*(exp(beta*g) - 1)^3)/4 + (4*pi*b^3*(a - b)^3*(exp(beta*g) - 1)^3)/9) - 4*pi*(a^6*(pi/72 + (pi*(2*exp(beta*g) - 2))/72 + (pi*(exp(beta*g) - 1)^2)/36) - a^4*((pi*a^2)/4 + (((pi*a^2)/2 + (pi*b^2)/2)*(exp(beta*g) - 1)^2)/2 + (a^2*pi*(2*exp(beta*g) - 2))/4) + a^3*((4*pi*a^3)/9 - (2*((2*pi*a^3)/3 - (2*b^3*pi)/3)*(exp(beta*g) - 1)^2)/3)) + (pi^2*(2*a - b)*(exp(beta*g) - 1)^2*(30*a*b^4 + 16*a^4*b - 20*a^5*exp(beta*g) - 17*b^5*exp(beta*g) + 32*a^5 + 15*b^5 + 60*a^2*b^3 - 136*a^3*b^2 - 34*a*b^4*exp(beta*g) - 10*a^4*b*exp(beta*g) + 22*a^2*b^3*exp(beta*g) + 76*a^3*b^2*exp(beta*g)))/18 + (pi^2*(2*a - b)*(exp(beta*g) - 1)*(32*a^5*exp(2*beta*g) - 64*a^5*exp(beta*g) - 3*a^4*b + 30*b^5*exp(beta*g) - 16*b^5*exp(2*beta*g) - 15*b^5 - 3*a^2*b^3 + 6*a^3*b^2 + 70*a^4*b*exp(beta*g) + 4*a*b^4*exp(2*beta*g) - 2*a^4*b*exp(2*beta*g) + 6*a^2*b^3*exp(beta*g) - 76*a^3*b^2*exp(beta*g) + 8*a^2*b^3*exp(2*beta*g) + 8*a^3*b^2*exp(2*beta*g)))/18
% [-1/36, pi, pi, 162*a^5*b - 6*a*b^5 + 87*a^6*exp(beta*g) + 180*a^6*exp(2*beta*g) - 156*a^6*exp(3*beta*g) - 91*b^6*exp(beta*g) + 90*b^6*exp(2*beta*g) - 30*b^6*exp(3*beta*g) - 81*a^6 + 31*b^6 - 3*a^2*b^4 + 84*a^3*b^3 - 189*a^4*b^2 + 6*a*b^5*exp(beta*g) - 162*a^5*b*exp(beta*g) + 3*a^2*b^4*exp(beta*g) + 108*a^3*b^3*exp(beta*g) + 81*a^4*b^2*exp(beta*g) - 384*a^3*b^3*exp(2*beta*g) + 216*a^4*b^2*exp(2*beta*g) + 192*a^3*b^3*exp(3*beta*g) - 108*a^4*b^2*exp(3*beta*g)]
% (87*exp(beta*g) + 180*exp(2*beta*g) - 156*exp(3*beta*g) - 81)*a^6 + (162*b - 162*b*exp(beta*g))*a^5 + (81*b^2*exp(beta*g) + 216*b^2*exp(2*beta*g) - 108*b^2*exp(3*beta*g) - 189*b^2)*a^4 + (108*b^3*exp(beta*g) - 384*b^3*exp(2*beta*g) + 192*b^3*exp(3*beta*g) + 84*b^3)*a^3 + (3*b^4*exp(beta*g) - 3*b^4)*a^2 + (6*b^5*exp(beta*g) - 6*b^5)*a + 90*b^6*exp(2*beta*g) - 91*b^6*exp(beta*g) - 30*b^6*exp(3*beta*g) + 31*b^6

%% 0 <= a < b / 3
clc; clear; close all;
tic
syms a b beta g r_12 x
int3 = 4 * pi * int(r_12^2 * ((-1) * 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)...
    + (exp(beta * g) - 1) * 2 * (4 * pi / 3 * a^3 - 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2))...
    + (-1) * (exp(beta * g) - 1)^2 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - (4 * pi / 3 * a^3 - int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)))), r_12, 0, a)...
    + 4 * pi * int(r_12^2 * ((exp(beta * g) - 1) * 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)...
    + (-1) * (exp(beta * g) - 1)^2 * 2 * (4 * pi / 3 * a^3 - 2 * int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2))...
    + (exp(beta * g) - 1)^3 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - (4 * pi / 3 * a^3 - int(pi * (a^2 - (a - x)^2), x, 0, a - r_12 / 2)))), r_12, a, 2 * a)...
    + 4 * pi * int(r_12^2 * ((-1) * (exp(beta * g) - 1)^2 * 2 * 4 * pi / 3 * a^3 ...
    + (exp(beta * g) - 1)^3 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - 4 * pi / 3 * a^3)), r_12, 2 * a, b - a)...
    + 4 * pi * int(r_12^2 * ((-1) * (exp(beta * g) - 1)^2 * 2 * (int(pi * (a^2 - (a - x)^2), x, 0, a - (a^2 + r_12^2 - b^2) / 2 / r_12) + int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 + (a^2 + r_12^2 - b^2) / 2 / r_12))...
    + (exp(beta * g) - 1)^3 * 2 * (int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 / 2) - (int(pi * (a^2 - (a - x)^2), x, 0, a - (a^2 + r_12^2 - b^2) / 2 / r_12) + int(pi * (b^2 - (b - x)^2), x, 0, b - r_12 + (a^2 + r_12^2 - b^2) / 2 / r_12)))), r_12, b - a, b)
int3_factored = factor(int3)
collect(int3_factored(4), a)
toc
% 4*pi*((5*pi*b^6*(exp(beta*g) - 1)^3)/24 - (pi*(a - b)^6*(exp(beta*g) - 1)^3)/72 - (a^4*pi*(exp(beta*g) - 1)^2*(11*a^2 - 32*a*b + 26*b^2))/12 - (a^4*pi*(exp(beta*g) - 1)^3*(11*a^2 - 32*a*b + 26*b^2))/12 + (pi*b^2*(a - b)^4*(exp(beta*g) - 1)^3)/4 + (4*pi*b^3*(a - b)^3*(exp(beta*g) - 1)^3)/9) - 4*pi*(a^6*(pi/72 + (pi*(2*exp(beta*g) - 2))/72 + (pi*(exp(beta*g) - 1)^2)/36) - a^4*((pi*a^2)/4 + (((pi*a^2)/2 + (pi*b^2)/2)*(exp(beta*g) - 1)^2)/2 + (a^2*pi*(2*exp(beta*g) - 2))/4) + a^3*((4*pi*a^3)/9 - (2*((2*pi*a^3)/3 - (2*b^3*pi)/3)*(exp(beta*g) - 1)^2)/3)) + (pi^2*(3*a - b)*(exp(beta*g) - 1)^2*(15*a*b^4 + 9*a^4*b + 171*a^5*exp(beta*g) - 15*b^5*exp(beta*g) + 21*a^5 + 15*b^5 + 48*a^2*b^3 - 92*a^3*b^2 - 15*a*b^4*exp(beta*g) - 9*a^4*b*exp(beta*g) - 48*a^2*b^3*exp(beta*g) + 156*a^3*b^2*exp(beta*g)))/18 + (a^3*pi^2*(exp(beta*g) - 1)*(322*a^3*exp(beta*g) - 270*a*b^2 - 368*a^3*exp(2*beta*g) - 448*b^3*exp(beta*g) + 224*b^3*exp(2*beta*g) + 63*a^3 + 224*b^3 + 540*a*b^2*exp(beta*g) - 270*a*b^2*exp(2*beta*g)))/18
% [-1/6, pi, pi, a^6*exp(beta*g) + 30*a^6*exp(2*beta*g) - 26*a^6*exp(3*beta*g) - 15*b^6*exp(beta*g) + 15*b^6*exp(2*beta*g) - 5*b^6*exp(3*beta*g) + 5*b^6 + 32*a^3*b^3*exp(beta*g) - 18*a^4*b^2*exp(beta*g) - 64*a^3*b^3*exp(2*beta*g) + 36*a^4*b^2*exp(2*beta*g) + 32*a^3*b^3*exp(3*beta*g) - 18*a^4*b^2*exp(3*beta*g)]
% (exp(beta*g) + 30*exp(2*beta*g) - 26*exp(3*beta*g))*a^6 + (36*b^2*exp(2*beta*g) - 18*b^2*exp(beta*g) - 18*b^2*exp(3*beta*g))*a^4 + (32*b^3*exp(beta*g) - 64*b^3*exp(2*beta*g) + 32*b^3*exp(3*beta*g))*a^3 + 15*b^6*exp(2*beta*g) - 15*b^6*exp(beta*g) - 5*b^6*exp(3*beta*g) + 5*b^6
