assignBaseParameters_attackform

r0 = 2.6E-6; 
d0 = 4E-6;
h0 = 0.03;
K0 = 0.06;
b0 =  .02;
rho = 0.02;

epsilon = rho.^1.3;
size1 = 1E2;
sigmahR = 1/8;

sizes = [1E-6,1E-4,1E-2,1E0,1E2];

outVec =[];

for i =1:length(sizes)
    size1 =sizes(i);
COEFF = coeffVector(r0,d0,b0,h0,K0,epsilon);
RECOEFF = recoeffVector(r0,d0,b0,h0,K0,epsilon, ... 
         rho,sigmar,sigmahR,sigmaK);
RESIGMA = resigmaVector(sigmar,sigmad,sigmab,sigmahR,sigmahC,sigmaK); 

[R1, C1]=equilibriaRescaled(size1,RECOEFF,RESIGMA);
mu = RECOEFF(1)*size1^RESIGMA(1);
gamma = RECOEFF(2)*size1^RESIGMA(2);
omega = RECOEFF(3)*size1^RESIGMA(3);
% omega = 0.3;
% mu = 3;
% gamma = 0.8;

maxt = 800;
t=[0:0.1,maxt];
x0=[log(R1)+0.1,log(C1)+0.1];
gamma/omega;
(mu+1)/(mu-1);

options = odeset('Vectorized','off','Jacobian',@jacobianRMAlogged,'RelTol',1E-3);

[t,y] = ode15s(@(t,y) loggedODE(t,y,mu,gamma,omega), t, x0);


recx = exp(y(:,1))./(b0*h0*rho^sigmahR*size1^(sigmab+sigmahR+sigmahC));
recy = exp(y(:,2)).*epsilon./(b0*h0*rho^sigmahR*size1^(sigmab+sigmahR+sigmahC));

xvec=[min(recx(300:400));max(recx(300:400))];
yvec=[min(recy(300:400));max(recy(300:400))];

addto = [xvec,yvec];

outVec = [outVec;addto];

end







function COEFF = coeffVector(r0,d0,b0,h0,K0,epsilon)
    % Creates the coefficient vector 
    COEFF = [r0,d0,b0,h0,K0,epsilon];
end

function SIGMA = sigmaVector(sigmar,sigmad,sigmab,sigmahR,sigmahC,sigmaK)
sigmah = sigmahR + sigmahC;
% Creates the sigma vector
    SIGMA = [sigmar,sigmad,sigmab,sigmahR,sigmahC,sigmaK];
end

function RECOEFF = recoeffVector(r0,d0,b0,h0,K0,epsilon,rho, ...
    sigmar, sigmahR, sigmaK)
    % creates the rescaled coefficients

    mu0 = K0*b0*h0*rho^(sigmaK + sigmahR);
    gamma0 = epsilon/(r0*h0*rho^(sigmar + sigmahR));
    omega0 = d0/((rho^sigmar)*r0);
    RECOEFF = [mu0,gamma0,omega0];
end


function RESIGMA = resigmaVector(sigmar,sigmad,sigmab, sigmahR,sigmahC,sigmaK)
    % creates the rescaled exponents
    sigmamu = sigmaK + sigmahR + sigmahC + sigmab;
    sigmagamma = - sigmahR - sigmahC - sigmar;
    sigmaomega = sigmad - sigmar;
        
    RESIGMA = [sigmamu,sigmagamma,sigmaomega];
end
