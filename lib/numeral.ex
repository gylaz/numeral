defmodule Numeral do
  alias Timex.DateFormat

  def path_of_life(birth_date) do
    birth_date |> DateFormat.parse("%m/%d/%Y", :strftime) |> sum_birth_date
  end

  defp sum_birth_date({:error, _}), do: 0
  defp sum_birth_date({:ok, date}) do
    date.day + date.month + date.year |> sum_number
  end

  defp sum_number(number) when number == 11 or number == 22, do: number
  defp sum_number(number) do
    sum = Integer.digits(number) |> Enum.sum
    case length Integer.digits(sum) do
      1 -> sum
      _ -> sum_number(sum)
    end
  end
end
