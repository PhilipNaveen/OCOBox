function [x_opt, f_opt] = oneCycleScheduler(optimizer, f, grad_f, x0, options, max_lr, epochs_up, epochs_down)
    % ONECYCLESCHEDULER Uses a one cycle learning rate for the optimizer.
    %   [x_opt, f_opt] = oneCycleScheduler(optimizer, f, grad_f, x0, options, max_lr, epochs_up, epochs_down)
    %   runs the optimizer with a one cycle learning rate.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimizer options (optional)
    %   max_lr - maximum learning rate
    %   epochs_up - number of epochs for the learning rate to increase
    %   epochs_down - number of epochs for the learning rate to decrease
    %
    % Outputs:
    %   x_opt - optimal point
    %   f_opt - optimal function value

    if nargin < 5
        options = struct();
    end

    maxIter = options.maxIter;
    x = x0;
    initial_lr = max_lr / 10;  % Typically, initial_lr is max_lr / 10

    for epoch = 1:maxIter
        if epoch <= epochs_up
            lr = initial_lr + (max_lr - initial_lr) * (epoch / epochs_up);
        elseif epoch <= epochs_up + epochs_down
            lr = max_lr - (max_lr - initial_lr) * ((epoch - epochs_up) / epochs_down);
        else
            lr = initial_lr / 100;  % Typically, ending learning rate is initial_lr / 100
        end
        options.alpha = lr;
        [x, ~] = optimizer(f, grad_f, x, options);
    end

    x_opt = x;
    f_opt = f(x_opt);
end
