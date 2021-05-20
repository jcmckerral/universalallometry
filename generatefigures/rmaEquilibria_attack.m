function [R, C, vsol1]=rmaEquilibria_attack(m,RHO,COEFF,SIGMA)
%% Analytical solutions to the RM system with scaling values on size.
% attack form indicates the bR/(1+hbR) form of the functional response

rho=RHO;

r = COEFF(1).*rho.^(SIGMA(1)).*m.^(SIGMA(1));
d = COEFF(2).*m.^(SIGMA(2));
b = COEFF(3).*m.^(SIGMA(3));
h = COEFF(4).*rho.^(SIGMA(4)).*m.^(SIGMA(4) + SIGMA(5));
K = COEFF(5).*rho.^(SIGMA(6)).*m.^(SIGMA(6));

% convert/solve dimensionless sytem
c=d./r;
m=COEFF(6)./(h.*r);
k=K.*b.*h;

usol1=c./(m-c);
vsol1=(1+usol1).*(1-usol1./k)./m;


% convert back to original system
R=usol1./(b.*h);
C=vsol1.*COEFF(6)./(b.*h);

end