using GRIBDatasets
using Documenter

DocMeta.setdocmeta!(GRIBDatasets, :DocTestSetup, :(using GRIBDatasets); recursive=true)

makedocs(;
    modules=[GRIBDatasets],
    authors="tcarion <tristan.carion@gmail.com> and contributors",
    repo="https://github.com/tcarion/GRIBDatasets.jl/blob/{commit}{path}#{line}",
    sitename="GRIBDatasets.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://tcarion.github.io/GRIBDatasets.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/tcarion/GRIBDatasets.jl",
    devbranch="main",
)