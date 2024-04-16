"""
    numderiv(f,x::Float64,ϵ=1e-7::Float64)

Compute the numerical derivative of a function `f` at `x` using a step size `ϵ`. The default value of `ϵ` is `1e-7`.

''f'(x) = \\frac{f(x_0+\\epsilon)-f(x)}{\\epsilon}''

## Examples
```julia-repl
julia> f(x) = x^2
julia> numderiv(f,2.0)
4.000000330961484
"""
function numderiv(f,x::Float64,ϵ=1e-7::Float64)
    df = (f(x+ϵ)-f(x))
    return df/ϵ
end


