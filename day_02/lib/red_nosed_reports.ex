defmodule RedNosedReports do
  def first_part(input) do
    input
  end

  def second_part(input) do
    input
  end

  def safe?(line) do
    list = Regex.scan(~r/\d+/, line)
           |> Enum.map(&List.first/1)
           |> Enum.map(&String.to_integer/1)
    true
  end
end
