function [R1, C1]=equilibriaRescaled(m,RECOEFF,RESIGMA)
%% Analytical solutions to the RM system with scaling values on size.
% solutions to the rescaled system

mu = RECOEFF(1).*m.^(RESIGMA(1));
gamma = RECOEFF(2).*m.^(RESIGMA(2));
omega = RECOEFF(3).*m.^(RESIGMA(3));

R1=omega./(gamma-omega);
C1=R1.*(1-R1./mu)./omega;

end