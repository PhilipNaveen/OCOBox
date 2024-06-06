function [x_opt, f_opt] = inverseTimeDecayScheduler(optimizer, f, grad_f, x0, options, initial_lr, decay_rate, decay_steps)
    % INVERSETIMEDECAYSCHEDULER Uses an inverse time decay learning rate for the optimizer.
    %   [x_opt, f_opt] = inverseTimeDecayScheduler(optimizer, f, grad_f, x0, options, initial_lr, decay_rate, decay_steps)
    %   runs the optimizer with an inverse time decay learning rate.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimizer options (optional)
    %   initial_lr - initial learning rate
    %   decay_rate - decay rate
    %   decay_steps - number of steps after which the learning rate is decayed
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
        lr = initial_lr / (1 + decay_rate * floor(epoch / decay_steps));
        options.alpha = lr;
        [x, ~] = optimizer(f, grad_f, x, options);
    end

    x_opt = x;
    f_opt = f(x_opt);
end
