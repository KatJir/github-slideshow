using LinearAlgebra

function newton(f, g, x; ϵ = 1e-6, max_iter = 1000)
    xn = x
    i = 1
    while any(abs.(f(xn)) .> ϵ) && i < max_iter
        grad = g(xn)
        A = ndims(grad) == 1 ? transpose(grad) : grad
        xn -= A \ f(xn)
        println(f(xn)) # optional
        i+=1
    end
    i >= max_iter || any(isequal.(f(xn), NaN)) ? error("Method did not converge after $i iteration.") : return ("The root is $xn and the number of iteration is $i.")
end




