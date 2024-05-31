## Optimization Toolbox

This repository contains MATLAB implementations of various optimization algorithms organized into different categories for ease of navigation.

### Gradient Descent

- **`gradientDescent.m`**: Implementation of the Gradient Descent algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`polyakStepsize.m`**: Implementation of the Polyak stepsize for Gradient Descent.
  - *Inputs*: 
    - `grad_f`: Gradient of the objective function.
    - `H`: Hessian of the objective function.
    - `x`: Current solution.
  - *Returns*: 
    - `alpha`: Step size.

- **`measureDistanceToOptimality.m`**: Function to measure the distance to optimality in Gradient Descent.
  - *Inputs*: 
    - `x`: Current solution.
    - `X_opt`: Optimal solution.
  - *Returns*: 
    - `distance`: Distance to optimality.

- **`constrainedGradientDescent.m`**: Implementation of Constrained Gradient Descent algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `constraint_func`: Function representing the constraints.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters satisfying the constraints.

- **`svmTraining.m`**: Example implementation for Support Vector Machine training using Gradient Descent.
  - *Inputs*: 
    - `X_train`: Matrix of training features.
    - `y_train`: Vector of training labels.
    - `C`: Regularization parameter.
  - *Returns*: 
    - `model`: Trained SVM model.

### Online Optimization

- **`onlineGradientDescent.m`**: Implementation of Online Gradient Descent algorithm.
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

- **`expConcaveFunctions.m`**: Implementation of Exponentially Weighted Online Convex Optimization.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`onlineNewtonStep.m`**: Implementation of the Online Newton Step Algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

### Regularization

- **`rftlAlgorithm.m`**: Implementation of the Regularized Follow-The-Leader algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`onlineMirrorDescent.m`**: Implementation of Online Mirror Descent algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`adaptiveGradientDescent.m`**: Implementation of Adaptive Gradient Descent algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

### Bandit Optimization

- **`exp3.m`**: Implementation of the EXP3 algorithm for Bandit Optimization.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`onlineGradientDescentWithoutGradient.m`**: Implementation of Online Gradient Descent without a Gradient.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

### Majority, Arbitrary, and Randomized Learning

- **Majority Learning Algorithm**:
  - *Inputs*: 
    - `H`: Matrix representing the learner's concept class (n x m).
    - `X`: Set of columns of matrix H.
  - *Returns*: 
    - `MAJH`: Hypothesis constructed by setting the value in each of its columns to the most frequent element in the corresponding column of matrix H.

- **Randomized Learning Algorithm**:
  - *Inputs*: 
    - `r`: Iteration number.
    - `Hr`: Hypotheses set at iteration r.
    - `Qr`: Probability distribution over hypotheses set at iteration r.
    - `Xr`: Set of columns of matrix Hr.
  - *Returns*: 
    - `hr`: Learner's hypothesis selected randomly from Qr.

- **Arbitrary Learning Algorithm**:
  - *Inputs*: 
    - `i`: Iteration number.
    - `Hi`: Hypotheses set at iteration i.
    - `Xi`: Set of columns of matrix Hi.
  - *Returns*: 
    - `hi`: Learner's hypothesis selected arbitrarily from Hi.

### Momentum-Based Optimization

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
    - `batch_size`: Size of mini-batch.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`nestrovMomentum.m`**: Implementation of Nesterov Momentum.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta`: Momentum parameter.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`adadelta.m`**: Implementation of Adadelta optimization algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `gamma`: Decay rate.
    - `epsilon`: Small value to prevent division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`adagrad.m`**: Implementation of Adagrad optimization algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `epsilon`: Small value to prevent division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`adam.m`**: Implementation of Adam optimization algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta1`: Exponential decay rate for the first moment estimates.
    - `beta2`: Exponential decay rate for the second moment estimates.
    - `epsilon`: Small value to prevent division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`amsgrad.m`**: Implementation of AMSGrad optimization algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta1`: Exponential decay rate for the first moment estimates.
    - `beta2`: Exponential decay rate for the second moment estimates.
    - `epsilon`: Small value to prevent division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`eve.m`**: Implementation of Eve optimization algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `beta1`: Exponential decay rate for the first moment estimates.
    - `beta2`: Exponential decay rate for the second moment estimates.
    - `gamma`: Regularization term.
    - `epsilon`: Small value to prevent division by zero.
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
    - `gamma`: Regularization term.
    - `epsilon`: Small value to prevent division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters.

- **`rmsprop.m`**: Implementation of RMSProp optimization algorithm.
  - *Inputs*: 
    - `X`: Matrix of input features (n x m).
    - `y`: Vector of target labels (n x 1).
    - `alpha`: Learning rate.
    - `gamma`: Decay rate.
    - `epsilon`: Small value to prevent division by zero.
    - `max_iter`: Maximum number of iterations.
  - *Returns*: 
    - `theta`: Vector of parameters

