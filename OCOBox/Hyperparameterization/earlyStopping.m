function [best_hyperparameters, best_performance] = earlyStopping(optimizer, hyperparameter_grid, f, data)
    % EARLYSTOPPING Performs early stopping for hyperparameter optimization.
    %   [best_hyperparameters, best_performance] = earlyStopping(optimizer, hyperparameter_grid, f, data)
    %   performs early stopping to find the best hyperparameters for the given optimizer.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   hyperparameter_grid - struct containing hyperparameter ranges
    %   f - objective function to optimize
    %   data - data required by the optimizer
    %
    % Outputs:
    %   best_hyperparameters - best hyperparameters found before early stopping
    %   best_performance - performance of the best hyperparameters

    % Define early stopping criteria
    max_no_improvement = 10;  % Maximum number of iterations without improvement
    tol = 1e-6;  % Tolerance for improvement

    % Initialize variables
    best_performance = Inf;
    no_improvement = 0;

    % Start hyperparameter optimization
    for i = 1:100  % Maximum number of iterations
        % Generate random hyperparameters
        current_hyperparameters = struct();
        for field = fieldnames(hyperparameter_grid)'
            field_name = field{1};
            range = hyperparameter_grid.(field_name);
            current_hyperparameters.(field_name) = range(1) + (range(2) - range(1)) * rand();
        end

        % Run optimizer with current hyperparameters
        [~, performance] = optimizer(f, data, current_hyperparameters);

        % Check for improvement
        if performance < best_performance - tol
            best_performance = performance;
            best_hyperparameters = current_hyperparameters;
            no_improvement = 0;
        else
            no_improvement = no_improvement + 1;
            if no_improvement >= max_no_improvement
                break;  % Early stopping
            end
        end
    end
end
