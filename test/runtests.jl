using Tango
using Test

@testset "Numerical derivative" begin
    f(x) = x^3
    g(x) = x*x+6
    @test numderiv(f,3.0) ≈ 27.0 atol=1e-6
    @test numderiv(g,3.0) ≈ 6.0 atol=1e-6
end

@testset "Tangent line" begin
    f(x) = x^3
    g(x) = x^2
    tangent_f = get_tangent(f,3.0)
    tangent_g = get_tangent(g,0.0)
    @test tangent_f(4.0) ≈ 2*27.0 atol=1e-6
    @test tangent_g(5.0) ≈ 0.0 atol=1e-6
end