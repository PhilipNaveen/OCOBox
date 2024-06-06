## Optimization Toolbox

This MATLAB toolbox is the start of a long-term project for those interested in building a large-scale user base and community of people who need to experiment with stochastcs, specifically on the online convex optimization framework. The collection of algorithms is intended to be convenient, and I'm open to suggestions on improvements and debugging!


## Gradient Descent

- **`gradientDescent.m`**: Implementation of the basic Gradient Descent algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`polyakStepsize.m`**: Implementation of Gradient Descent with Polyak Step Size.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`measureDistanceToOptimality.m`**: Function to measure the distance to optimality.
  - *Inputs*: 
    - `theta`: Current parameter vector.
    - `theta_opt`: Optimal parameter vector.
  - *Returns*: 
    - `distance`: Distance to optimality.

- **`constrainedGradientDescent.m`**: Implementation of Constrained Gradient Descent.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `constraint_fn`: Constraint function.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`svmTraining.m`**: Implementation of SVM training using Gradient Descent.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `lambda`: Regularization parameter.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

## Online Optimization

- **`onlineGradientDescent.m`**: Implementation of Online Gradient Descent.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`stochasticGradientDescent.m`**: Implementation of Stochastic Gradient Descent.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`expConcaveFunctions.m`**: Implementation of Online Learning for Exp-Concave Functions.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`onlineNewtonStep.m`**: Implementation of Online Newton Step.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

## Regularization

- **`rftlAlgorithm.m`**: Implementation of Regularized Follow-the-Leader (RFTL) algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `lambda`: Regularization parameter.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`onlineMirrorDescent.m`**: Implementation of Online Mirror Descent.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `mirror_map`: Mirror map function.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`adaptiveGradientDescent.m`**: Implementation of Adaptive Gradient Descent.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Initial learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

## Bandit Optimization

- **`exp3.m`**: Implementation of the EXP3 algorithm for adversarial bandits.
  - *Inputs*: 
    - `K`: Number of actions.
    - `gamma`: Exploration parameter.
    - `T`: Number of rounds.
  - *Returns*: 
    - `weights`: Weights of the actions.

- **`onlineGradientDescentWithoutGradient.m`**: Implementation of Online Gradient Descent without Gradient.
  - *Inputs*: 
    - `f`: Objective function.
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

## Projection-Free Algorithms

- **`conditionalGradientMethod.m`**: Implementation of the Conditional Gradient Method (Frank-Wolfe).
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

## Games and Duality

- **`linearProgramming.m`**: Solving Linear Programming problems using optimization techniques.
  - *Inputs*: 
    - `c`: Coefficient vector for the objective function.
    - `A`: Constraint matrix.
    - `b`: Constraint vector.
  - *Returns*: 
    - `x`: Solution vector.

- **`zeroSumGames.m`**: Solving Zero-Sum Games using optimization techniques.
  - *Inputs*: 
    - `A`: Payoff matrix for the row player.
  - *Returns*: 
    - `v`: Value of the game.
    - `p`: Mixed strategy for the row player.
    - `q`: Mixed strategy for the column player.

## Learning Theory

- **`dynamicRegret.m`**: Implementation of algorithms to minimize dynamic regret.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`adaptiveRegret.m`**: Implementation of algorithms to minimize adaptive regret.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

## Boosting

- **`onlineBoosting.m`**: Implementation of online boosting algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `num_weak_learners`: Number of weak learners.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `weak_learners`: Cell array of weak learners.

## Blackwell Approachability

- **`blackwellApproachability.m`**: Implementation of Blackwell Approachability algorithm.
  - *Inputs*: 
    - `U`: Set of utility vectors.
    - `A`: Set of action vectors.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `strategy`: Approachability strategy.

## Momentum-Based Optimization

- **`gradientDescentWithMomentum.m`**: Implementation of Gradient Descent with Momentum.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta`: Momentum parameter.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`miniBatchGradientDescentWithMomentum.m`**: Implementation of Mini-Batch Gradient Descent with Momentum.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta`: Momentum parameter.
    - `batch_size`: Size of the mini-batch.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`stochasticGradientDescentWithMomentum.m`**: Implementation of Stochastic Gradient Descent with Momentum.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta`: Momentum parameter.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`adagrad.m`**: Implementation of AdaGrad algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Initial learning rate.
    - `epsilon`: Smoothing term to avoid division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`adadelta.m`**: Implementation of AdaDelta algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `rho`: Decay rate.
    - `epsilon`: Smoothing term to avoid division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`adam.m`**: Implementation of Adam optimizer.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta1`: Exponential decay rate for the first moment estimates.
    - `beta2`: Exponential decay rate for the second moment estimates.
    - `epsilon`: Smoothing term to avoid division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`amsgrad.m`**: Implementation of AMSGrad optimizer.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta1`: Exponential decay rate for the first moment estimates.
    - `beta2`: Exponential decay rate for the second moment estimates.
    - `epsilon`: Smoothing term to avoid division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`rmsprop.m`**: Implementation of RMSProp optimizer.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta`: Exponential decay rate for the moving average of squared gradients.
    - `epsilon`: Smoothing term to avoid division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`nestrovMomentum.m`**: Implementation of Nesterov Accelerated Gradient (NAG) optimizer.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta`: Momentum parameter.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`fasfa.m`**: Implementation of Fast Adaptive Stochastic Function Accelerators (FASFA).
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta1`: Exponential decay rate for the first moment estimates.
    - `beta2`: Exponential decay rate for the second moment estimates.
    - `epsilon`: Smoothing term to avoid division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`eve.m`**: Implementation of Eve optimizer.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta1`: Exponential decay rate for the first moment estimates.
    - `beta2`: Exponential decay rate for the second moment estimates.
    - `epsilon`: Smoothing term to avoid division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

## Interactive Learning

- **`majorityLearningAlgorithm.m`**: Implementation of the Majority Learning Algorithm.
  - *Inputs*:
    - `H`: n x m matrix representing the learner’s concept class.
    - `teacher`: Function representing the teacher providing counter-examples.
  - *Returns*:
    - `h`: The best majority hypothesis when no counter-example is found.

- **`randomizedLearningAlgorithm.m`**: Implementation of the Randomized Learning Algorithm.
  - *Inputs*:
    - `H`: n x m matrix representing the learner’s concept class.
    - `Q`: Initial probability distribution over hypotheses.
    - `teacher`: Function representing the teacher providing counter-examples.
  - *Returns*:
    - `h`: The randomly drawn hypothesis when no counter-example is found.

- **`arbitraryLearningAlgorithm.m`**: Implementation of the Arbitrary Learning Algorithm.
  - *Inputs*:
    - `H`: n x m matrix representing the learner’s concept class.
    - `teacher`: Function representing the teacher providing counter-examples.
  - *Returns*:
    - `h`: The arbitrarily chosen hypothesis when no counter-example is found.

# Hyperparameterization Toolbox

- **`gridSearch(optimizer, hyperparameter_grid, f, data)`**: Performs grid search over the specified hyperparameter grid.
  - *Inputs*:
    - `optimizer`: Function handle to the optimizer.
    - `hyperparameter_grid`: Struct containing hyperparameter ranges.
    - `f`: Objective function to optimize.
    - `data`: Data required by the optimizer.
  - *Returns*:
    - Best hyperparameters and performance found by grid search.

- **`randomSearch(optimizer, hyperparameter_grid, f, data, num_trials)`**: Performs random search over the specified hyperparameter grid.
  - *Inputs*:
    - `optimizer`: Function handle to the optimizer.
    - `hyperparameter_grid`: Struct containing hyperparameter ranges.
    - `f`: Objective function to optimize.
    - `data`: Data required by the optimizer.
    - `num_trials`: Number of random trials to perform.
  - *Returns*:
    - Best hyperparameters and performance found by random search.

- **`bayesianOptimization(optimizer, hyperparameter_grid, f, data)`**: Performs Bayesian optimization for hyperparameter tuning using Gaussian Processes.
  - *Inputs*:
    - `optimizer`: Function handle to the optimizer.
    - `hyperparameter_grid`: Struct containing hyperparameter ranges.
    - `f`: Objective function to optimize.
    - `data`: Data required by the optimizer.
  - *Returns*:
    - Best hyperparameters and performance found by Bayesian optimization.


- **`populationBasedOptimization(optimizer, hyperparameter_grid, f, data)`**: Performs population-based optimization using differential evolution.
  - *Inputs*:
    - `optimizer`: Function handle to the optimizer.
    - `hyperparameter_grid`: Struct containing hyperparameter ranges.
    - `f`: Objective function to optimize.
    - `data`: Data required by the optimizer.
  - *Returns*:
    - Best hyperparameters and performance found by population-based optimization.

- **`earlyStopping(optimizer, hyperparameter_grid, f, data)`**: Implements early stopping mechanism for hyperparameter optimization.
  - *Inputs*:
    - `optimizer`: Function handle to the optimizer.
    - `hyperparameter_grid`: Struct containing hyperparameter ranges.
    - `f`: Objective function to optimize.
    - `data`: Data required by the optimizer.
  - *Returns*:
    - Best hyperparameters and performance found before early stopping.

- **`evolutionaryApproach(optimizer, hyperparameter_grid, f, data)`**: Performs hyperparameter optimization using genetic algorithm.
  - *Inputs*:
    - `optimizer`: Function handle to the optimizer.
    - `hyperparameter_grid`: Struct containing hyperparameter ranges.
    - `f`: Objective function to optimize.
    - `data`: Data required by the optimizer.
  - *Returns*:
    - Best hyperparameters and performance found by evolutionary approach.

# Learning Rate Schedulers

- **`constantScheduler(stepsize)`**: Constant learning rate scheduler that keeps the learning rate unchanged throughout training.
  - *Inputs*:
    - `stepsize`: Initial learning rate or step size.
  - *Returns*:
    - Function handle to the constant learning rate scheduler.

- **`linearDecayScheduler(initial_stepsize, decay_rate, iteration)`**: Linear decay learning rate scheduler that decreases the learning rate linearly over iterations.
  - *Inputs*:
    - `initial_stepsize`: Initial learning rate or step size.
    - `decay_rate`: Rate of linear decay.
    - `iteration`: Current iteration number.
  - *Returns*:
    - Updated learning rate or step size.

- **`exponentialDecayScheduler(initial_stepsize, decay_rate, iteration)`**: Exponential decay learning rate scheduler that decreases the learning rate exponentially over iterations.
  - *Inputs*:
    - `initial_stepsize`: Initial learning rate or step size.
    - `decay_rate`: Rate of exponential decay.
    - `iteration`: Current iteration number.
  - *Returns*:
    - Updated learning rate or step size.
    - 
- **`cyclicalLogAnnealingScheduler(start_lr, end_lr, cycle_length, iteration)`**: Cyclical learning rate scheduler with logarithmic annealing that varies the learning rate within a cycle.
  - *Inputs*:
    - `start_lr`: Initial learning rate.
    - `end_lr`: Final learning rate.
    - `cycle_length`: Length of one cycle in iterations.
    - `iteration`: Current iteration number.
  - *Returns*:
    - Updated learning rate.


