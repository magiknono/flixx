defmodule Flixx.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :title, :string
      add :rating, :string
      add :total_gross, :decimal

      timestamps()
    end

  end
end
