using Distributions, Plots

y = [2.1 2.2 3.1 1.6 2.5 0.5]
θ = collect(0:0.01:3);
logL = log.(θ) .- θ .*mean(y);
plot(θ,logL,linewidth = 5, color = :blue, 
       label = false, xlabel = "θ", ylabel = "lnL_T(θ)")
findmax(logL)
θ[51]

Likeli = exp.(logL);
plot(θ, Likeli, linewidth = 4, color =:green, label = false)


#Z = [pdf(MvNormal,[i,j]) for i in 0:100, j in 0:100]