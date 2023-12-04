defmodule RockPaperScissors do
  # A, X -> Rock
  # B, Y -> Paper
  # C, Z -> Scissors

  # X > C
  # Y > A
  # Z > B

  def value_of_our_move("X"), do: 1
  def value_of_our_move("Y"), do: 2
  def value_of_our_move("Z"), do: 3
  def value_of_our_move(_), do: 0

  def value_of_result("Draw"), do: 3
  def value_of_result("Lose"), do: 0
  def value_of_result("Win"), do: 6

  def value_of_output("A", "X"), do: value_of_result("Draw")
  def value_of_output("A", "Y"), do: value_of_result("Win")
  def value_of_output("A", "Z"), do: value_of_result("Lose")
  def value_of_output("B", "X"), do: value_of_result("Lose")
  def value_of_output("B", "Y"), do: value_of_result("Draw")
  def value_of_output("B", "Z"), do: value_of_result("Win")
  def value_of_output("C", "X"), do: value_of_result("Win")
  def value_of_output("C", "Y"), do: value_of_result("Lose")
  def value_of_output("C", "Z"), do: value_of_result("Draw")

  def calculate_result(round) do
    [opponent, us] = String.split(round, " ")
    value_of_output(opponent, us) + value_of_our_move(us)
  end
end

File.read("data/input-day2.txt")
|> elem(1)
|> String.split("\n")
|> Enum.map(&RockPaperScissors.calculate_result/1)
|> Enum.sum
