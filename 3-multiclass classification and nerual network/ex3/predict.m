function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

%size(p)

X2 = [ones(size(X,1),1) X];    % add the biased channel

%size(X),size(X2),size(Theta1')

A1 = sigmoid(X2 * Theta1');

%size(A1)

%pause

A1 = [ones(size(A1,1),1) A1];

%size(A1)

h = sigmoid(A1 * Theta2');

%size(h)


%pause


for set = 1 : m
     
    max_class= 0;
    max_p =  -0.1;
    
    for class = 1: num_labels
      if (h(set,class) > max_p) 
         max_p = h(set,class);
         max_class = class;
      end
    end 
     
    p(set)=max_class;
    
end




% =========================================================================


end
