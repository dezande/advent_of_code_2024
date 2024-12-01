defmodule Main do
  def first_part() do
    result = Template.first_part(input())
    IO.puts("Result part one: #{result}")
  end

  def second_part() do
    result = Template.second_part(input())
    IO.puts("Result part two: #{result}")
  end

  defp input() do
    file_input = File.read("input.txt")
    elem(file_input, 1)
  end
end

Main.first_part()
Main.second_part()
