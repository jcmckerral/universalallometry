function [tout,yout] = sensitivtyFunctionsSimulation(mu,gamma,omega,initX,initY,tlength)

% worker function to easily pass parameters to the ODE function and get
% results

inputOmega=omega;
inputGamma=gamma;
inputMu=mu;

ti=(0:0.01:tlength);

x0=double([initX,initY,0,0,0,0,0,0]);

[t,y] = ode45(@(t,y) sensitivityODE(t,y,inputMu,inputGamma,inputOmega), ti, x0);
tout = t;
yout = y;
end