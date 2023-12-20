using CSV
using DataFrames
using Downloads

function get_data()
    DATA = CSV.File(Downloads.download("https://www.dropbox.com/scl/fi/d3v41yp6x9cxlqvueoet3/membersClean.csv?rlkey=v9xfdgu6oyubjur9rlu6k9eow&dl=0"),normalizenames = true) |> DataFrame
    return DATA
end

function get_indiv()
    return ["Ama Dablam","Autumn","France","Climber",2025,0,35,1,0,1,0,0]
end