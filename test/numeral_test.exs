defmodule NumeralTest do
  use ExUnit.Case
  doctest Numeral

  import Numeral

  test "path_of_life returns zero for invalid date input" do
    assert path_of_life("1/11/1983") == 0
    assert path_of_life("12/9/1983") == 0
    assert path_of_life("02/09/83") == 0
    assert path_of_life("22/22/1983") == 0
  end

  test "path_of_life reduces the date of birth to single digit" do
    assert path_of_life("01/21/1983") == 7
    assert path_of_life("04/11/1982") == 8
  end

  test "path_of_life does not reduce master numbers" do
    assert path_of_life("08/09/1992") == 11
    assert path_of_life("03/10/1971") == 22
  end
end
