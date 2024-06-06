function [best_hyperparameters, best_performance] = evolutionaryApproach(optimizer, hyperparameter_grid, f, data)
    % EVOLUTIONARYAPPROACH Performs evolutionary approach for hyperparameter optimization.
    %   [best_hyperparameters, best_performance] = evolutionaryApproach(optimizer, hyperparameter_grid, f, data)
    %   performs evolutionary approach to find the best hyperparameters for the given optimizer.
    %
    % Inputs:
    %   optimizer - function handle to the optimizer (e.g., @adam)
    %   hyperparameter_grid - struct containing hyperparameter ranges
    %   f - objective function to optimize
    %   data - data required by the optimizer
    %
    % Outputs:
    %   best_hyperparameters - best hyperparameters found by evolutionary approach
    %   best_performance - performance of the best hyperparameters

    % Define differential evolution options
    de_options = optimoptions(@particleswarm, 'Display', 'off');

    % Extract hyperparameter ranges
    ranges = struct2cell(hyperparameter_grid);
    num_hyperparameters = numel(ranges);

    % Define objective function for differential evolution
    obj_func = @(x) -f(optimizer, data, cell2struct(num2cell(x), fieldnames(hyperparameter_grid)));

    % Run differential evolution
    [best_hyperparameters, best_performance] = particleswarm(obj_func, num_hyperparameters, ...
        cell2mat(ranges(:, 1)), cell2mat(ranges(:, 2)), de_options);

    best_hyperparameters = cell2struct(num2cell(best_hyperparameters), fieldnames(hyperparameter_grid));
    best_performance = -best_performance;
end
