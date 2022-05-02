using DataWidening
using Documenter

DocMeta.setdocmeta!(DataWidening, :DocTestSetup, :(using DataWidening); recursive=true)

makedocs(;
    modules=[DataWidening],
    authors="Dilum Aluthge <dilum@aluthge.com> and contributors",
    repo="https://github.com/bcbi/DataWidening.jl/blob/{commit}{path}#{line}",
    sitename="DataWidening.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://bcbi.github.io/DataWidening.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
    strict=true,
)

deploydocs(;
    repo="github.com/bcbi/DataWidening.jl",
    devbranch="main",
)
