defmodule Main do
  def run_first_part() do
    file_input = File.read("input.txt")
    input = elem(file_input, 1)
    result = HistorianHysteria.main(input)
    IO.puts("Result part one: #{result}")
  end
end

Main.run_first_part()
