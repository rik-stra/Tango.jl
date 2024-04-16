export numderiv
export get_tangent

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

"""
    get_tangent(f,x_0,ϵ=1e-7)

Returns a function that represents the tangent line to the function `f` at `x_0`.
"""
function get_tangent(f,x_0,ϵ=1e-7)
    slope = numderiv(f,x_0,ϵ)
    return x -> f(x_0) + slope*(x-x_0)
end
