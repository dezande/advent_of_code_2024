defmodule RedNosedReportsTest do
  use ExUnit.Case

  describe "first_part" do
    test "example" do
      input = """
        7 6 4 2 1
        1 2 7 8 9
        9 7 6 2 1
        1 3 2 4 5
        8 6 4 4 1
        1 3 6 7 9
      """

      assert RedNosedReports.first_part(input) == 2
    end
  end

  describe "safe?" do
    test "return true increasing" do
      assert RedNosedReports.safe?("7 6 4 2 1") == true
    end

    test "return true decreasing" do
      assert RedNosedReports.safe?("1 3 6 7 9") == true
    end

    test "return false increase by 5" do
      assert RedNosedReports.safe?("1 2 7 8 9") == false
    end

    test "return false decrease by 4" do
      assert RedNosedReports.safe?("1 3 2 4 5") == false
    end

    test "return false because increasing and decrease" do
      assert RedNosedReports.safe?("8 6 4 4 1") == false
    end
  end

  describe "second_part" do
    test "example" do
      input = """
        7 6 4 2 1
        1 2 7 8 9
        9 7 6 2 1
        1 3 2 4 5
        8 6 4 4 1
        1 3 6 7 9
      """

      assert RedNosedReports.second_part(input) == 0
    end
  end
end
