# Control Statements in Matlab/Octave

## for loop

Consider a row vector v:

    >> v = zeros(1,10)

    v = 0     0     0     0     0     0     0     0     0     0


Iterate over the elements of the vector:

    >> for i=1:10,
    v(i) = 2^i
    end

Resulting vector:

    v = 2 4 8 16 32 64 128 256 512 1024

Another way of writing:

    >> indices = 1:10
    >> for i=indices,
       disp(i)
       end

## while loop

    >> v=zeros(1, 10)

    v =

     0     0     0     0     0     0     0     0     0     0

    >> i=1;
    >> while i<=5,
        v(i) = i*100
        i=i+1
        end

Resulting vector:

    v = 100   200   300   400   500     0     0     0     0     0

## if statement

Consider the following example:

    >> i=1

    >> while true
        v(i) = 999
        if i == 6,
            break
        end
        i=i+1
        end

Note the usage of the *break* keyword.

Resulting vector:

    v = 999   999   999   999   999   999     0     0     0     0

### if-elseif

Consider a vector v.

    >> v=zeros(1,10);
    >> v(1)=2;
    >> if v(1)==1,
        disp("One");
       elseif v(1)==2,
        disp("Two");
       else
        disp("Neither one nor two");
        end;

The output of the above code snippet will be:

    Two

## Functions

Create a file with the functionName and save it with the **.m** extension.
For example,

Create a file with the name *squareThisNumber.m*.

The file contains the following code:

    function y = SquareThisNumber(x)
    y=x^2
    endfunction

The above function returns a single value y which is the squared value of the parameter x.

Change directory to the path where the file is saved. OR add the path in Octave's search path:

    addpath('D:\Studies\')

On the Octave command window execute the function as follows:

    >> SquareThisNumber(5)
        y =  25
        ans =  25

### Returning multiple values

A function can return multiple values in Octave. Create a file named *SquareAndCubeThisNumber.m* with the following code:

    function [y1, y2] = SquareAndCubeThisNumber(x)
        y1=x^2
        y2=x^3
    endfunction

Here, the function returns two values:
* y1 - square of x
* y2 - cube of x

Execute the function as follows:

    >> [a,b]=SquareAndCubeThisNumber(5)

Output:

    y1 =  25
    y2 =  125
    a =  25
    b =  125

### Example: Cost Function

We can find the sum of squared errors for predictions on training examples by defining a cost function.

Define X, Y and theta as follows:

    >> X = [1 1;1 2;1 3]
    X = 1   1
        1   2
        1   3

    >> Y = [1; 2; 3]
    Y = 1
        2
        3
    
    >> theta=[0;1]
    theta = 0
            1

Create a file *costFunction.m* that contains the following code:

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

Execute the funtion:

    >> J = costFunction(X,Y,theta);
    >> disp(J)
    0

Execute with different values of theta:

    >> theta=[0;0]
    theta = 0
            0

    >> J = costFunction(X,Y,theta);
    >> disp(J)
    2.3333
