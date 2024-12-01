defmodule HistorianHysteriaTest do
  use ExUnit.Case

  describe "second part" do
    test "example" do
      input = """
      3   4
      4   3
      2   5
      1   3
      3   9
      3   3
      """

      assert HistorianHysteria.second_part(input) == 31
    end
  end

  describe "main" do
    test "example" do
      input = """
      3   4
      4   3
      2   5
      1   3
      3   9
      3   3
      """

      assert HistorianHysteria.main(input) == 11
    end
  end

  describe "calcule_diff" do
    test "return the diff" do
      assert HistorianHysteria.calcule_diff([[1, 3], [2, 3], [3, 3], [3, 4], [3, 5], [4, 9]]) == [2, 1, 0, 1, 2, 5]
    end
  end

  describe "reassembles_into_list" do
    test "return a list with 2 column" do
      list_one = [1, 2, 3, 3, 3, 4]
      list_two = [3, 3, 3, 4, 5, 9]
      assert HistorianHysteria.reassembles_into_list(list_one, list_two) == [[1, 3], [2, 3], [3, 3], [3, 4], [3, 5], [4, 9]]
    end
  end

  describe "order_first_column" do
    test "render to list ordered" do
      list = [[3, 4], [4, 3], [2, 5], [1, 3], [3, 9], [3, 3]]
      assert HistorianHysteria.order_first_column(list) == [1, 2, 3, 3, 3, 4]
    end
  end

  describe "order_second_column" do
    test "render to list ordered" do
      list = [[3, 4], [4, 3], [2, 5], [1, 3], [3, 9], [3, 3]]
      assert HistorianHysteria.order_second_column(list) == [3, 3, 3, 4, 5, 9]
    end
  end

  describe "read_input" do
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

  describe "lin_to_list" do
    test "Transform line to list" do
      assert HistorianHysteria.line_to_list("1 2") == [1, 2]
    end

    test "Transform line to list with more space" do
      assert HistorianHysteria.line_to_list("  3  4  ") == [3, 4]
    end
  end
end
