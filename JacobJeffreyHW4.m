% Define the function g(x)
g = @(x) 0.5 + 0.5 * sin(x);

% Set the number of recursions to perform
numRecursions = 20;

% Set the number of initial guesses
numGuesses = 50;

% Initialize an empty matrix to store the results
xk = zeros(numGuesses, numRecursions);

% Generate 50 random initial guesses between 0 and 1
x0 = rand(1, numGuesses);

% Perform the fixed point recursion for each initial guess
for i = 1:numGuesses
    x = x0(i);
    for k = 1:numRecursions
        x = g(x);
        xk(i, k) = x;
    end
end

% Plot the results
figure;
hold on;
for i = 1:numGuesses
    plot(1:numRecursions, xk(i, :), 'LineWidth', 1);
end
xlabel('k (recursion index)');
ylabel('xk');
title('Fixed Point Recursion for Kepler''s Equation');
hold off;
