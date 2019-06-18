defmodule Flixx.Cinema.Movie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "movies" do
    field :rating, :string
    field :title, :string
    field :total_gross, :decimal

    timestamps()
  end

  @doc false
  def changeset(movie, attrs) do
    movie
    |> cast(attrs, [:title, :rating, :total_gross])
    |> validate_required([:title, :rating, :total_gross])
  end
end
