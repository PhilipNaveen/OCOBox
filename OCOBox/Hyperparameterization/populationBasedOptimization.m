function [best_hyperparameters, best_performance] = populationBasedOptimization(optimizer, hyperparameter_grid, f, data)
    % POPULATIONBASEDOPTIMIZATION Performs population-based optimization for hyperparameter optimization.
    %   [best_hyperparameters, best_performance] = populationBasedOptimization(optimizer, hyperparameter_grid, f, data)
    %   performs population-based optimization to find the best hyperparameters for the given optimizer.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   hyperparameter_grid - struct containing hyperparameter ranges
    %   f - objective function to optimize
    %   data - data required by the optimizer
    %
    % Outputs:
    %   best_hyperparameters - best hyperparameters found by population-based optimization
    %   best_performance - performance of the best hyperparameters

    % Define genetic algorithm options
    ga_options = optimoptions(@ga, 'Display', 'off');

    % Extract hyperparameter ranges
    ranges = struct2cell(hyperparameter_grid);
    num_hyperparameters = numel(ranges);

    % Define objective function for genetic algorithm
    obj_func = @(x) -f(optimizer, data, cell2struct(num2cell(x), fieldnames(hyperparameter_grid)));

    % Run genetic algorithm
    [best_hyperparameters, best_performance] = ga(obj_func, num_hyperparameters, [], [], [], [], ...
        cell2mat(ranges(:, 1)), cell2mat(ranges(:, 2)), [], ga_options);

    best_hyperparameters = cell2struct(num2cell(best_hyperparameters), fieldnames(hyperparameter_grid));
    best_performance = -best_performance;
end
