function J = costFunction(X, Y, theta)
  % number of training examples
  m = size(X, 1);
  
  % predictions on m training examples
  predictions = X*theta;
  
  % squared error in predictions
  sqErr = (Y-predictions).^2;
  
  % cost function J - sum of squared errors
  J = 1/(2*m) * sum(sqErr);
endfunction
