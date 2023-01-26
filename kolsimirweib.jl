using Random, Plots, LaTeXStrings

Random.seed!(123)

alpha = 1.5 
# generate data
N = 100; 
U = rand(1, N);
x = (-log.(U)).^(1/alpha);
#y = 1 .- exp.(-x)
y = sort(1 .- exp.(-x), dims = 2);
i = 1:N;
plot([0 y]', [0 collect(i./N)']', lw = 3, lc = :red, linetype = :steppre, label = "")
plot!([0.0, 1.0], [0., 1.], lw = 3, lc =:blue, label="")
xlabel!("x")
ylabel!(L"\hat{G}_N(x)")
title!("The Reduced Empirical cdf  "*L" \hat{G}_N(x)")
