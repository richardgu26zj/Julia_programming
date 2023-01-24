using Images, Plots

philip = load("philip.jpg")

size(philip)

typeof(philip)

philip[1:1000, 1:500]


theta = collect(0:0.001:1)
likelihood = theta .^4 .*(1 .-theta) .^6
plot(theta, likelihood, linewidth = 4, color = :blue,
       label = "likelihood function")
theta_max = theta[findmax(likelihood)[2]]
maxlike = findmax(likelihood)[1]
scatter!([theta_max],[maxlike], markersize = 6, 
            markercolor = :red, 
            label = "maximum likelihood point")

theta2 = collect(0:0.001:1)
likelihood2 = theta2 .^(400) .*(1 .- theta2) .^(600)
plot(theta2, likelihood2,
        linewidth = 5, color = :green, 
        ylims =(0, 1.10*findmax(likelihood2)[1]),
        label = "maximum likelihood")
theta_max2 = theta[findmax(likelihood2)[2]]
maxlike2 = findmax(likelihood2)[1]
scatter!([theta_max2], [maxlike2], markersize = 6, 
             markercolor = :red, 
             label = "maximum likelihood point")