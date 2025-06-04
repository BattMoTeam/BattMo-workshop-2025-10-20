using Pkg: Pkg

Pkg.activate(".") # Activates the environment in the current folder
Pkg.instantiate()
Pkg.add(url = "https://github.com/BattMoTeam/BattMo.jl", rev = "a52c1e31fb99e1e5d838f06ece4689bce85ba4cc")


