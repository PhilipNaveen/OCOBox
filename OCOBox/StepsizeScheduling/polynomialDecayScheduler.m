function [x_opt, f_opt] = polynomialDecayScheduler(optimizer, f, grad_f, x0, options, initial_lr, power, maxIter)
    % POLYNOMIALDECAYSCHEDULER Uses a polynomial decay learning rate for the optimizer.
    %   [x_opt, f_opt] = polynomialDecayScheduler(optimizer, f, grad_f, x0, options, initial_lr, power, maxIter)
    %   runs the optimizer with a polynomial decay learning rate.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimizer options (optional)
    %   initial_lr - initial learning rate
    %   power - power for the polynomial decay
    %   maxIter - maximum numbewr of iterations
    %
    % Outputs:
    %   x_opt - optimal point
    %   f_opt - optimal function value

    if nargin < 5
        options = struct();
    end

    x = x0;
    
    for epoch = 1:maxIter
        lr = initial_lr * (1 - epoch / maxIter)^power;
        options.alpha = lr;
        [x, ~] = optimizer(f, grad_f, x, options);
    end

    x_opt = x;
    f_opt = f(x_opt);
end
