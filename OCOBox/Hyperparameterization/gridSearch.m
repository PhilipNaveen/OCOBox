function [best_hyperparameters, best_performance] = gridSearch(optimizer, hyperparameter_grid, f, data)
    % GRIDSEARCH Performs grid search for hyperparameter optimization.
    %   [best_hyperparameters, best_performance] = gridSearch(optimizer, hyperparameter_grid, f, data)
    %   performs grid search to find the best hyperparameters for the given optimizer.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   hyperparameter_grid - struct containing htperparameter ranges
    %   f - objective function to optimize
    %   data - data required by the optimizer
    %
    % Outputs:
    %   best_hyperparameters - best hyperparameters found by grid search
    %   best_performance - performance of the best hyperparameters

    % Create all combinations of hyperparameters
    hyperparameter_combinations = struct2cell(allcomb(struct2cell(hyperparameter_grid)));

    num_combinations = size(hyperparameter_combinations, 2);
    performances = zeros(1, num_combinations);

    for i = 1:num_combinations
        % Set current hyperparameters
        current_hyperparameters = cell2struct(hyperparameter_combinations(:, i), fieldnames(hyperparameter_grid));
        
        % Run optimizer with current hyperparameters
        [~, performances(i)] = optimizer(f, data, current_hyperparameters);
    end

    % Find the best hyperparameters and performance
    [best_performance, idx] = min(performances);
    best_hyperparameters = cell2struct(hyperparameter_combinations(:, idx), fieldnames(hyperparameter_grid));
end
