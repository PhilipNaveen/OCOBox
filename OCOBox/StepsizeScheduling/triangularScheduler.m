function [x_opt, f_opt] = triangularScheduler(optimizer, f, grad_f, x0, options, base_lr, max_lr, step_size)
    % TRIANGULARSCHEDULER Uses a triangular learning rate for the optimizer.
    %   [x_opt, f_opt] = triangularScheduler(optimizer, f, grad_f, x0, options, base_lr, max_lr, step_size)
    %   runs the optimizer with a triangular learning rate.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimizer options (optional)
    %   base_lr - minimum learning rate
    %   max_lr - maximum learning rate
    %   step_size - number of iterations in half a cycle
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
        cycle = floor(1 + epoch / (2 * step_size));
        x_ = abs(epoch / step_size - 2 * cycle + 1);
        lr = base_lr + (max_lr - base_lr) * max(0, 1 - x_);
        options.alpha = lr;
        [x, ~] = optimizer(f, grad_f, x, options);
    end

    x_opt = x;
    f_opt = f(x_opt);
end
