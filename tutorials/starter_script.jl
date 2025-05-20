#######################################################################################
# Run this this script to setup Julia and Jupyter notebook. 
# You can run this file by clinking the play button at the top right of the screen.

using Pkg: Pkg

# Setup a Julia environment
Pkg.activate("../") # Activates a new environment in the current folder
Pkg.instantiate()  # Installs the packages listed in Project.toml if any

# Add the necessary Julia package
Pkg.add("IJulia") # Package that provides a Julia kernel for the Jupyter notebooks
Pkg.precompile()
