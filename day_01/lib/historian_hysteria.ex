defmodule HistorianHysteria do
  def main(input) do
    input_list = read_input(input)
    list_one = order_first_column(input_list)
    list_two = order_second_column(input_list)

    reassembles_into_list(list_one, list_two)
    |> calcule_diff
    |> Enum.sum()
  end

  def second_part(input) do
    input_list = read_input(input)
    list_one = order_first_column(input_list)
    list_two = order_second_column(input_list)

    list_one
    |> Enum.map(&multi_with_list(&1, list_two))
    |> Enum.sum()
  end

  def calcule_diff(list) do
    list
    |> Enum.map(&diff/1)
  end

  def reassembles_into_list(list_one, list_two) do
    Enum.zip(list_one, list_two)
    |> Enum.map(&Tuple.to_list/1)
  end

  def order_first_column(list) do
    order_any_colunn(list, 0)
  end

  def order_second_column(list) do
    order_any_colunn(list, 1)
  end

  def read_input(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&line_to_list/1)
  end

  def line_to_list(line) do
    Regex.scan(~r/\d+/, line)
    |> Enum.map(&List.first/1)
    |> Enum.map(&String.to_integer/1)
  end

  defp multi_with_list(number, list) do
    size = Enum.count(list, &(&1 == number))
    number * size
  end

  defp diff(list) do
    List.last(list) - List.first(list)
    |> abs()
  end

  defp order_any_colunn(list, column_number) do
    list
    |> Enum.map(&Enum.at(&1, column_number))
    |> Enum.sort()
  end
end
