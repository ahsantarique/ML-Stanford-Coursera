function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

for i=1:m
   J = J- y(i,1)*log(sigmoid(X(i,:)*theta))-(1-y(i,1))*log(1-sigmoid(X(i,:)*theta));
end
J = 2*J;
for i=2:size(theta)
   J = J+lambda*(theta(i,1)^2);
end
J = J/2;
J = J/m; 
% =============================================================



for i=1:m
    grad(1,1)=grad(1,1)+(sigmoid(X(i,:)*theta)-y(i,1))*X(i,1);
end
grad(1,1) = grad(1,1)/m;

for j = 2:size(theta)
    for i=1:m
        grad(j,1)=grad(j,1)+(sigmoid(X(i,:)*theta)-y(i,1))*X(i,j);
        
    end
    grad(j,1) = (grad(j,1)+lambda*theta(j,1))/m;
end

end




% =============================================================
