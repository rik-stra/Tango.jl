using Tango
using Test

@testset "Numerical derivative" begin
    f(x) = x^3
    g(x) = x*x+6
    @test numderiv(f,3.0) ≈ 27.0 atol=1e-6
    @test numderiv(g,3.0) ≈ 6.0 atol=1e-6
end
