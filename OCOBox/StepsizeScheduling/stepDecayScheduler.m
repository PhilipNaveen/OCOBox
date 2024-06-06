function [x_opt, f_opt] = stepDecayScheduler(optimizer, f, grad_f, x0, options, initial_lr, drop, epochs_drop)
    % STEPDECAYSCHEDULER Uses a step decay learning rate for the optimizer.
    %   [x_opt, f_opt] = stepDecayScheduler(optimizer, f, grad_f, x0, options, initial_lr, drop, epochs_drop) 
    %   runs the optimizer with a step decay learning rate.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimizer options (optional)
    %   initial_lr - initial learning rate
    %   drop - factor by which the learning rate is reduced
    %   epochs_drop - number of epochs after which the learning rate is reduced
    %
    % Outputs:
    %   x_opt - optimal point
    %   f_opt - optimal function value

    if nargin < 5
        options = struct();
    end

    maxIter = options.maxIter;
    options.alpha = initial_lr;
    x = x0;

    for epoch = 1:maxIter
        if mod(epoch, epochs_drop) == 0
            options.alpha = options.alpha * drop;
        end
        [x, ~] = optimizer(f, grad_f, x, options);
    end

    x_opt = x;
    f_opt = f(x_opt);
end
