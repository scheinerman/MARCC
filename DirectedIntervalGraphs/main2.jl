require("matrix_maker.jl")

model      = make_matrix_1
n          = 1000
total_reps = 100000
chunk      = 100
reps       = int(total_reps/chunk)

info("Creating " * string(total_reps) *
	 " random graphs on "* string(n)* " vertices")

h = degree_tally(model, n, reps, chunk)

# h /= sum(h)
# plot(0:n, h)
# xlabel("Out-degree")
# ylabel("Probability")
# title(string(total_reps) * " random graphs on " * string(n) * " vertices")
# grid()
# savefig("out-deg-distro.pdf")

for k=0:n-1
    println(k,",\t", h[k+1])
end

