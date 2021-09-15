"""

    LogisticMap(r, N)

Simulate the logistic map.

    Usage:
```julia-repl
LogisticMap(r, N)
```
Arguments:
- `r` : Value of the coefficient parameter.
- `x₁` : Value of the starting point of the time-series vector.
- `N` : Length of the time series.
"""
function LogisticMap(r::Float64 = 4.0, x₁::Float64 = 0.4, N::Int64 = 1000)

    X = zeros(N)
    X[1] = x₁

    for i in 2:N
        X[i] = r * X[i-1] * (1 - X[i])
    end

    return X
end
