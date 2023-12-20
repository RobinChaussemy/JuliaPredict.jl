module JuliaPredict

using DataFrames
using MLJ
using DecisionTree
using Random
using NearestNeighbors
using CSV
using Downloads

export greet_your_package_name
export perclass_splits
include("functions.jl")

export EncodeData
include("Encoder.jl")

export Tree_Process
include("ForestPrediction.jl")

export KNN_Process
include("KNNPrediction.jl")

export get_data
export get_indiv
include("Data.jl")

end
