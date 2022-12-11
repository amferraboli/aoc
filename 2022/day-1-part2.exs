File.read("2022/input-day1.txt")
|> elem(1)
|> String.split("\n\n")
|> Enum.map(
    fn elf_bag ->
      String.split(elf_bag, "\n")
      |> Enum.map(&String.to_integer/1)
      |> Enum.sum
    end
  )
|> Enum.sort(:desc)
|> Enum.slice(0,3)
|> Enum.sum()
