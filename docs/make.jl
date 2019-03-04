if Base.HOME_PROJECT[] !== nothing
    Base.HOME_PROJECT[] = abspath(Base.HOME_PROJECT[])
end
#using Pkg
#Pkg.add("Documenter")
using Documenter
using MLJ

#prettyurls to be changed
makedocs(
    sitename = "MLJ",
    format = Documenter.HTML(),
    modules = [MLJ]
)

deploydocs(
    repo = "github.com/ysimillides/MLJ.jl.git"
)

#    modules = [MLJ]
# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.

