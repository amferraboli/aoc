File.read("data/input-day-3.txt")
|> elem(1)
|> String.split("\n")
|> Enum.map(fn x -> String.length(x) |> Integer.floor_div(2) end)

# check if all rucksacks have even number of items - sum should be zero
# |> Enum.map(fn x -> Integer.mod(String.length(x),2) end)
# |> Enum.sum
