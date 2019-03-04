if Base.HOME_PROJECT[] !== nothing
    Base.HOME_PROJECT[] = abspath(Base.HOME_PROJECT[])
end
using Pkg
#Pkg.add("Documenter")
#Pkg.clone("https://github.com/wildart/TOML.jl")
#Pkg.clone("https://github.com/alan-turing-institute/MLJBase.jl")
#Pkg.clone("https://github.com/alan-turing-institute/MLJModels.jl")
#Pkg.clone("https://github.com/alan-turing-institute/MLJ.jl")
using Documenter
using MLJ
using MLJBase
using MLJModels

#prettyurls to be changed
makedocs(
    sitename = "MLJ",
    format = Documenter.HTML(),
    modules = [MLJ,MLJBase,MLJModels],
    pages = Any["News"=>"NEWS.md","Getting Started"=>"getting_started.md",
    "Developing"=>Any["Glossary"=>"glossary.md","Internals"=>"internals.md","Adding new Models"=>
"adding_new_models.md"],
   "Documentation"=>"index.md"]
)

deploydocs(
    repo = "github.com/ysimillides/MLJ.jl.git"
)

#    modules = [MLJ]
# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.

