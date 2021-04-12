using Pkg

Pkg.activate("./homework_01")
Pkg.instantiate()
include("newton.jl")

f(x) = [exp(x[1]^2 + x[2]^2 - 1) + (x[1] - 1)^2]
g(x) = [2*x[1]*(exp(x[1]^2 + x[2]^2 - 1)) + 2*(x[1] - 1); 2*x[2]*(exp(x[1]^2 + x[2]^2 - 1))]
x_root = newton(f, g, [0.0; 0.0])




