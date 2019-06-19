defmodule Flixx.Cinema.Movie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "movies" do
    field :rating, :string
    field :title, :string
    field :total_gross, :decimal
    field :description, :string
    field :released_on, :date

    timestamps()
  end

  @doc false
  def changeset(movie, attrs) do
    movie
    |> cast(attrs, [:title, :rating, :total_gross, :description, :released_on])
    |> validate_required([:title, :rating])
  end
end
