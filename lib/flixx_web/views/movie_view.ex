defmodule FlixxWeb.MovieView do
  use FlixxWeb, :view
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
end
