using Pkg
Pkg.add("Documenter")
Pkg.add("https://github.com/ysimillides/MLJ.jl")
using Documenter
using MLJ

#prettyurls to be changed
makedocs(
    sitename = "MLJ",
    format = Documenter.HTML(),
    modules = [MLJ]
)

deploydocs(
    repo = "https://github.com/ysimillides/MLJ.jl"
)

#    modules = [MLJ]
# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.

