defmodule Flixx.Repo.Migrations.UpdateMoviesTable do
  use Ecto.Migration

  def change do
    alter table(:movies) do
      add :description, :text
      add :released_on, :date
    end
  end
end
