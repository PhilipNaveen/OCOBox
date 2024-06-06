function [x_opt, f_opt] = cyclicalLogAnnealingScheduler(optimizer, f, grad_f, x0, options, initial_lr, min_lr, cycle_length, log_base)
    % CYCLICALLOGANNEALINGSCHEDULER Uses a cyclical log annealing learning rate for the optimizer.
    %   [x_opt, f_opt] = cyclicalLogAnnealingScheduler(optimizer, f, grad_f, x0, options, initial_lr, min_lr, cycle_length, log_base)
    %   runs the optimizer with a cyclical log annealing learning rate.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimizer options (optional)
    %   initial_lr - initial learning rate
    %   min_lr - minimum learning rate
    %   cycle_length - number of epochs in one cycle
    %   log_base - base for logarithm (e.g., 10)
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
        cycle_position = mod(epoch-1, cycle_length) + 1;
        lr = min_lr + (initial_lr - min_lr) * (1 - log(cycle_position) / log(cycle_length) / log(log_base));
        options.alpha = lr;
        [x, ~] = optimizer(f, grad_f, x, options);
    end

    x_opt = x;
    f_opt = f(x_opt);
end
