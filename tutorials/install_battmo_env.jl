using Pkg: Pkg

Pkg.activate("tutorials") # Activates the environment in the current folder
Pkg.instantiate()
Pkg.add(url = "https://github.com/BattMoTeam/BattMo.jl", rev = "main")


