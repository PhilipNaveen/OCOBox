function [x_opt, f_opt] = eve(f, grad_f, x0, options)
    % EVE Implements the Eve optimization algorithm.
    %   [x_opt, f_opt] = eve(f, grad_f, x0, options) performs optimization of
    %   the objective function f using Eve algorithm.
    %
    % Inputs:
    %   f - objective function
    %   grad_f - gradient of the objective function
    %   x0 - initial point
    %   options - optimization options (optional)
    %
    % Outputs:
    %   x_opt - optimal point
    %   f_opt - optimal function value

    if nargin < 4
        options = struct();
    end

    % Default hyperparameters
    alpha = 0.001; % learning rate
    beta1 = 0.9;   % decay rate for 1st moment estimate
    beta2 = 0.999; % decay rate for 2nd moment estimate
    epsilon = 1e-8;% small constant for numerical stability
    gamma = 0.01;  % smoothing parameter
    maxIter = 1000;% maximum number of iterations

    % Override default options if provided
    if isfield(options, 'alpha')
        alpha = options.alpha;
    end
    if isfield(options, 'beta1')
        beta1 = options.beta1;
    end
    if isfield(options, 'beta2')
        beta2 = options.beta2;
    end
    if isfield(options, 'epsilon')
        epsilon = options.epsilon;
    end
    if isfield(options, 'gamma')
        gamma = options.gamma;
    end
    if isfield(options, 'maxIter')
        maxIter = options.maxIter;
    end

    % Initialize
    x = x0;
    m = zeros(size(x)); % 1st moment estimate
    v = zeros(size(x)); % 2nd moment estimate
    t = 0;

    % Optimization loop
    while t < maxIter
        t = t + 1;

        % Compute gradient
        grad = grad_f(x);

        % Update 1st moment estimate
        m = beta1 * m + (1 - beta1) * grad;

        % Update 2nd moment estimate
        v = beta2 * v + (1 - beta2) * (grad.^2);

        % Bias correction
        m_hat = m / (1 - beta1^t);
        v_hat = v / (1 - beta2^t);

        % Update parameters
        x = x - alpha * (m_hat ./ (sqrt(v_hat) + epsilon) + gamma * grad);
    end

    % Compute optimal function value
    f_opt = f(x);
    x_opt = x;
end
