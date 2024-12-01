defmodule HistorianHysteriaTest do
  use ExUnit.Case

  test "transform input to list" do
    input = """
    3   4
    4   3
    2   5
    1   3
    3   9
    3   3
    """

    assert HistorianHysteria.read_input(input) == [[3, 4], [4, 3], [2, 5], [1, 3], [3, 9], [3, 3]]
  end
end
