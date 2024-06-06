function [x_opt, f_opt] = constantScheduler(optimizer, f, grad_f, x0, options, lr)
    % CONSTANTSCHEDULER Uses a constant learning rate for the optimizer.
    %   [x_opt, f_opt] = constantScheduler(optimizer, f, grad_f, x0, options, lr) runs the
    %   optimizer with a constant learning rate.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimizer options (optional)
    %   lr - constant learning rate
    %
    % Outputs:
    %   x_opt - optimal point
    %   f_opt - optimal function value

    if nargin < 5
        options = struct();
    end

    options.alpha = lr;
    [x_opt, f_opt] = optimizer(f, grad_f, x0, options);
end
