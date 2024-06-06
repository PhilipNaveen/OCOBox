function [x_opt, f_opt] = cosineAnnealingWarmRestartsScheduler(optimizer, f, grad_f, x0, options, initial_lr, T_0, T_mult)
    % COSINEANNEALINGWARMRESTARTSSCHEDULER Uses a cosine annealing with warm restarts learning rate for the optimizer.
    %   [x_opt, f_opt] = cosineAnnealingWarmRestartsScheduler(optimizer, f, grad_f, x0, options, initial_lr, T_0, T_mult)
    %   runs the optimizer with a cosine annealing with warm restarts learning rate.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimizer options (optional)
    %   initial_lr - initial learning rate
    %   T_0 - initial number of iterations for the first restart
    %   T_mult - factor by which to increase the number of iterations at each restart
    %
    % Outputs:
    %   x_opt - optimal point
    %   f_opt - optimal function value

    if nargin < 5
        options = struct();
    end

    maxIter = options.maxIter;
    x = x0;
    T_curr = T_0;
    epoch_in_T = 0;

    for epoch = 1:maxIter
        if epoch_in_T >= T_curr
            T_curr = T_curr * T_mult;
            epoch_in_T = 0;
        end

        lr = initial_lr / 2 * (1 + cos(pi * epoch_in_T / T_curr));
        options.alpha = lr;
        [x, ~] = optimizer(f, grad_f, x, options);

        epoch_in_T = epoch_in_T + 1;
    end

    x_opt = x;
    f_opt = f(x_opt);
end
