function [x_opt, f_opt] = twoStepScheduler(optimizer, f, grad_f, x0, options, initial_lr, step1, step2, drop_factor)
    % TWOSTEPSCHEDULER Uses a two-step learning rate for the optimizer.
    %   [x_opt, f_opt] = twoStepScheduler(optimizer, f, grad_f, x0, options, initial_lr, step1, step2, drop_factor)
    %   runs the optimizer with a two-step learning rate.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimizer options (optional)
    %   initial_lr - initial learning rate
    %   step1 - first step epoch
    %   step2 - second step epoch
    %   drop_factor - factor by which to drop the learning rate
    %
    % Outputs:
    %   x_opt - optimal point
    %   f_opt - optimal function value

    if nargin < 5
        options = struct();
    end

    maxIter = options.maxIter;
    x = x0;
    
    for epoch = 1:maxIter
        if epoch < step1
            lr = initial_lr;
        elseif epoch < step2
            lr = initial_lr * drop_factor;
        else
            lr = initial_lr * drop_factor^2;
        end
        options.alpha = lr;
        [x, ~] = optimizer(f, grad_f, x, options);
    end

    x_opt = x;
    f_opt = f(x_opt);
end
