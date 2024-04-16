using Tango
using Documenter

DocMeta.setdocmeta!(Tango, :DocTestSetup, :(using Tango); recursive=true)

makedocs(;
    modules=[Tango],
    authors="Rik <rik.hoekstra@xs4all.nl> and contributors",
    sitename="Tango.jl",
    format=Documenter.HTML(;
        canonical="https://rik-stra.github.io/Tango.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/rik-stra/Tango.jl",
    devbranch="master",
)
