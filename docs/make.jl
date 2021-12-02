using TunnelIonization
using Documenter

DocMeta.setdocmeta!(TunnelIonization, :DocTestSetup, :(using TunnelIonization); recursive=true)

makedocs(;
    modules=[TunnelIonization],
    authors="Hannes Wallner",
    repo="https://github.com/HaneWall/TunnelIonization.jl/blob/{commit}{path}#{line}",
    sitename="TunnelIonization.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://HaneWall.github.io/TunnelIonization.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/HaneWall/TunnelIonization.jl",
    devbranch="main",
)
