function [best_hyperparameters, best_performance] = bayesianOptimization(optimizer, hyperparameter_grid, f, data)
    % Bayesian optimization for hyperparameter optimization.
    % Inputs:
    %   optimizer - some faunction handle to the optimizer (e.g., @adam)
    %   hyperparameter_grid - struct containing hyperparameter ranges
    %   f - objective function to optimize
    %   data - data required by the optimizer
    % Outputs:
    %   best_hyperparameters - best hyperparameters found by Bayesian optimization
    %   best_performance - performance of the best hyperparameters

    % Define Bayesian optimization parameters
    num_iterations = 10;  % Number of Bayesian optimization iterations

    % Initialize hyperparameter grid
    num_hyperparameters = numel(fieldnames(hyperparameter_grid));
    hyperparameter_names = fieldnames(hyperparameter_grid);
    initial_hyperparameters = cell2mat(struct2cell(hyperparameter_grid));

    % Initialize best hyperparameters and performance
    best_hyperparameters = [];
    best_performance = inf;

    % Perform Bayesian optimization iterations
    for iteration = 1:num_iterations
        % Update Gaussian Process model with observed data
        if iteration == 1
            % Initialize Gaussian Process model with initial data
            X = initial_hyperparameters;
            Y = zeros(size(X, 1), 1);
        else
            % Add new observation to the dataset
            X = [X; new_hyperparameters];
            Y = [Y; new_performance];
        end

        % Fit Gaussian Process model to observed data
        GP_model = fitrgp(X, Y, 'BasisFunction', 'constant', 'FitMethod', 'exact', 'PredictMethod', 'exact');

        % Define acquisition function (Expected Improvement)
        EI = @(x) expectedImprovement(x, GP_model, min(Y));

        % Optimize acquisition function to find new candidate hyperparameters
        options = optimset('Display', 'off');
        [new_hyperparameters, ~] = fminsearch(@(x) -EI(x), initial_hyperparameters, options);

        % Evaluate objective function with new candidate hyperparameters
        [~, new_performance] = optimizer(f, data, struct(hyperparameter_names, num2cell(new_hyperparameters)));

        % Update best hyperparameters and performance if needed
        if new_performance < best_performance
            best_hyperparameters = new_hyperparameters;
            best_performance = new_performance;
        end
    end
end

function EI = expectedImprovement(x, GP_model, best_observed)
    % Compute Expected Improvement (EI) acquisition function
    [~, ~, ci] = predict(GP_model, x);
    sigma = sqrt(ci(:, 2));
    z = (best_observed - ci(:, 1)) ./ sigma;
    EI = (best_observed - ci(:, 1)) .* normcdf(z) + sigma .* normpdf(z);
end
