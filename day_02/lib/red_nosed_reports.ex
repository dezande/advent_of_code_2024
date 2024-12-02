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
    diff_list = diff(list)

    all_in_range?(diff_list)
  end

  def diff([head1, head2 | tail]) do
    result = head1 - head2

    [result | diff([head2 | tail])]
  end
  def diff([_]), do: []

  def all_in_range?(diff_list) do
    diff_list
    |> Enum.map(&abs(&1))
    |> Enum.all?(&between_one_and_three?/1)
  end

  def between_one_and_three?(number) when number >= 1 and number <= 3 do
    true
  end
  def between_one_and_three?(_number), do: false
end
