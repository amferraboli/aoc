defmodule RockPaperScissors do
  # A -> Rock
  # B -> Paper
  # C -> Scissors
  def value_of_our_move("A"), do: 1
  def value_of_our_move("B"), do: 2
  def value_of_our_move("C"), do: 3
  def value_of_our_move(_), do: 0

  # X -> Lose
  # Y -> Draw
  # Z -> Win
  def value_of_result("Draw"), do: 3
  def value_of_result("Lose"), do: 0
  def value_of_result("Win"), do: 6

  def calculate_result("A X"), do: value_of_result("Lose") + value_of_our_move("C")
  def calculate_result("A Y"), do: value_of_result("Draw") + value_of_our_move("A")
  def calculate_result("A Z"), do: value_of_result("Win") + value_of_our_move("B")

  def calculate_result("B X"), do: value_of_result("Lose") + value_of_our_move("A")
  def calculate_result("B Y"), do: value_of_result("Draw") + value_of_our_move("B")
  def calculate_result("B Z"), do: value_of_result("Win") + value_of_our_move("C")

  def calculate_result("C X"), do: value_of_result("Lose") + value_of_our_move("B")
  def calculate_result("C Y"), do: value_of_result("Draw") + value_of_our_move("C")
  def calculate_result("C Z"), do: value_of_result("Win") + value_of_our_move("A")
end

File.read("data/input-day2.txt")
|> elem(1)
|> String.split("\n")
|> Enum.map(&RockPaperScissors.calculate_result/1)
|> Enum.sum
