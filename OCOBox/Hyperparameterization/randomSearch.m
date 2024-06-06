function [best_hyperparameters, best_performance] = randomSearch(optimizer, hyperparameter_grid, f, data, num_samples)
    % RANDOMSEARCH Performs random search for hyperparameter optimization.
    %   [best_hyperparameters, best_performance] = randomSearch(optimizer, hyperparameter_grid, f, data, num_samples)
    %   performs random search to find the best hyperparameters for the given optimizer.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   hyperparameter_grid - struct containing hyperparameter ranges
    %   f - objective function to optimize
    %   data - data required by the optimizer
    %   num_samples - number of random samples to try
    %
    % Outputs:
    %   best_hyperparameters - best hyperparameters found by random search
    %   best_performance - performance of the best hyperparameters

    % Generate random hyperparameter samples
    num_hyperparameters = numel(fieldnames(hyperparameter_grid));
    hyperparameters = struct();

    for field = fieldnames(hyperparameter_grid)'
        field_name = field{1};
        range = hyperparameter_grid.(field_name);
        hyperparameters.(field_name) = range(1) + (range(2) - range(1)) * rand(1, num_samples);
    end

    performances = zeros(1, num_samples);

    for i = 1:num_samples
        % Run optimizer with current hyperparameters
        [~, performances(i)] = optimizer(f, data, hyperparameters);
    end

    % Find the best hyperparameters and performance
    [best_performance, idx] = min(performances);
    best_hyperparameters = struct();

    for field = fieldnames(hyperparameter_grid)'
        field_name = field{1};
        best_hyperparameters.(field_name) = hyperparameters.(field_name)(idx);
    end
end
