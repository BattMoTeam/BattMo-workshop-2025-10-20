####################################################################################################
# An example of a user defined current function using WLTP data from https://github.com/JRCSTU/wltp

using CSV: CSV
using DataFrames
using Jutul: Jutul

# 1. Read data
path = joinpath(@__DIR__, "wltp_data/wltp.csv")
df = CSV.read(path, DataFrame)

t = df[:, 1]
P = df[:, 2]


# 2. Use a Jutul interpolator to create an interpolation object of the time and power data
power_func = Jutul.get_1d_interpolator(t, P, cap_endpoints = false)


# 3. Define a function to calculate the current. The current function has to accept time and voltage as arguments.
function current_function(time, voltage)

	factor = 4000 # Tot account for the fact that we're simulating a single cell instead of a battery pack

	return power_func(time) / voltage / factor
end

# @eval Main current_function = $current_function
