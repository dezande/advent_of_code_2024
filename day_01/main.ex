defmodule Main do
  def run_first_part() do
    result = HistorianHysteria.main(input())
    IO.puts("Result part one: #{result}")
  end

  def run_second_part() do
    result = HistorianHysteria.second_part(input())
    IO.puts("Result part two: #{result}")
  end

  defp input() do
    file_input = File.read("input.txt")
    elem(file_input, 1)
  end
end

Main.run_first_part()
Main.run_second_part()
