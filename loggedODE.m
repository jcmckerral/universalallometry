function dydt = loggedODE(t,X,mu,gamma,omega)
% log the ODE to help numerical solver over the large size range

% Rosenzweig-Macarthur equations
dydt =   [(1-(exp(X(1))/mu)) - (gamma*exp(X(2)))/(1+exp(X(1)));
        (gamma*exp(X(1)))/(1+exp(X(1))) - omega];

end