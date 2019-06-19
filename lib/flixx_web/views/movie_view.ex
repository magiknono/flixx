defmodule FlixxWeb.MovieView do
  use FlixxWeb, :view
  use Timex

  def n_to_currency(price) do
    Number.Currency.number_to_currency(price, precision: 0)
  end

  def total_gross(movie) do
    if movie < 225000 do
      "Flop"
    else
      n_to_currency(movie)
    end
  end

  def date_french(customdate) do
    Timex.format!(customdate, "%d-%m-%Y", :strftime)
  end
end
