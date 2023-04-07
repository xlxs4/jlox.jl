using jlox
using Documenter

DocMeta.setdocmeta!(jlox, :DocTestSetup, :(using jlox); recursive=true)

makedocs(;
    modules=[jlox],
    authors="Orestis Ousoultzoglou",
    repo="https://github.com/xlxs4/jlox.jl/blob/{commit}{path}#{line}",
    sitename="jlox.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://xlxs4.github.io/jlox.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/xlxs4/jlox.jl",
    devbranch="main",
)
