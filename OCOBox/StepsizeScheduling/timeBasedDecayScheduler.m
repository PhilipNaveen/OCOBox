function [x_opt, f_opt] = timeBasedDecayScheduler(optimizer, f, grad_f, x0, options, initial_lr, decay)
    % TIMEBASEDDECAYSCHEDULER Uses a time-based decay learning rate for the optimizer.
    %   [x_opt, f_opt] = timeBasedDecayScheduler(optimizer, f, grad_f, x0, options, initial_lr, decay)
    %   runs the optimizer with a time-based decay learning rate.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimizer options (optional)
    %   initial_lr - initial learning rate
    %   decay - decay factor
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
        options.alpha = initial_lr / (1 + decay * epoch);
        [x, ~] = optimizer(f, grad_f, x, options);
    end

    x_opt = x;
    f_opt = f(x_opt);
end
