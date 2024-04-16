export plot_tangent
using Plots
"""
    plot_tangent(f,x_0,ϵ=1e-7)
Plots the function `f` and its tangent line at `x_0`.
"""
function plot_tangent(f,x_0,ϵ=1e-7)
    tangent = get_tangent(f,x_0,ϵ)
    plot(f,0,10,label="f(x)")
    plot!(tangent,0,10,label="Tangent line")
end