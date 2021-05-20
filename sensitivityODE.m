function dydt = sensitivityODE(t,X,mu,gamma,omega)

% Sensitivity equations for the rescaled RM system

dydt =[ - X(1)*(X(1)/mu - 1) - (gamma*X(1)*X(2))/(X(1) + 1);
 (gamma*X(1)*X(2))/(X(1) + 1) - omega*X(2);
 - X(3)*((2*X(1))/mu + (gamma*X(2))/(X(1) + 1) - (gamma*X(1)*X(2))/(X(1) + 1)^2 - 1) - (X(1)*X(2))/(X(1) + 1) - (gamma*X(1)*X(4))/(X(1) + 1);
(X(1)*X(2))/(X(1) + 1) - X(4)*(omega - (gamma*X(1))/(X(1) + 1)) - ((gamma*X(2))/(X(1) + 1) - (gamma*X(1)*X(2))/(X(1) + 1)^2)*(X(3)*((2*X(1))/mu + (gamma*X(2))/(X(1) + 1) - (gamma*X(1)*X(2))/(X(1) + 1)^2 - 1) + (X(1)*X(2))/(X(1) + 1) + (gamma*X(1)*X(4))/(X(1) + 1));
 - X(5)*((2*X(1))/mu + (gamma*X(2))/(X(1) + 1) - (gamma*X(1)*X(2))/(X(1) + 1)^2 - 1) - (gamma*X(1)*X(6))/(X(1) + 1);
- X(2) - X(6)*(omega - (gamma*X(1))/(X(1) + 1)) - (X(5)*((2*X(1))/mu + (gamma*X(2))/(X(1) + 1) - (gamma*X(1)*X(2))/(X(1) + 1)^2 - 1) + (gamma*X(1)*X(6))/(X(1) + 1))*((gamma*X(2))/(X(1) + 1) - (gamma*X(1)*X(2))/(X(1) + 1)^2);
X(1)^2/mu^2 - X(7)*((2*X(1))/mu + (gamma*X(2))/(X(1) + 1) - (gamma*X(1)*X(2))/(X(1) + 1)^2 - 1) - (gamma*X(1)*X(8))/(X(1) + 1);
- X(8)*(omega - (gamma*X(1))/(X(1) + 1)) - ((gamma*X(2))/(X(1) + 1) - (gamma*X(1)*X(2))/(X(1) + 1)^2)*(X(7)*((2*X(1))/mu + (gamma*X(2))/(X(1) + 1) - (gamma*X(1)*X(2))/(X(1) + 1)^2 - 1) - X(1)^2/mu^2 + (gamma*X(1)*X(8))/(X(1) + 1))];


end