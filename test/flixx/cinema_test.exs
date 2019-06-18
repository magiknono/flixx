defmodule Flixx.CinemaTest do
  use Flixx.DataCase

  alias Flixx.Cinema

  describe "movies" do
    alias Flixx.Cinema.Movie

    @valid_attrs %{rating: "some rating", title: "some title", total_gross: "120.5"}
    @update_attrs %{rating: "some updated rating", title: "some updated title", total_gross: "456.7"}
    @invalid_attrs %{rating: nil, title: nil, total_gross: nil}

    def movie_fixture(attrs \\ %{}) do
      {:ok, movie} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Cinema.create_movie()

      movie
    end

    test "list_movies/0 returns all movies" do
      movie = movie_fixture()
      assert Cinema.list_movies() == [movie]
    end

    test "get_movie!/1 returns the movie with given id" do
      movie = movie_fixture()
      assert Cinema.get_movie!(movie.id) == movie
    end

    test "create_movie/1 with valid data creates a movie" do
      assert {:ok, %Movie{} = movie} = Cinema.create_movie(@valid_attrs)
      assert movie.rating == "some rating"
      assert movie.title == "some title"
      assert movie.total_gross == Decimal.new("120.5")
    end

    test "create_movie/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Cinema.create_movie(@invalid_attrs)
    end

    test "update_movie/2 with valid data updates the movie" do
      movie = movie_fixture()
      assert {:ok, %Movie{} = movie} = Cinema.update_movie(movie, @update_attrs)
      assert movie.rating == "some updated rating"
      assert movie.title == "some updated title"
      assert movie.total_gross == Decimal.new("456.7")
    end

    test "update_movie/2 with invalid data returns error changeset" do
      movie = movie_fixture()
      assert {:error, %Ecto.Changeset{}} = Cinema.update_movie(movie, @invalid_attrs)
      assert movie == Cinema.get_movie!(movie.id)
    end

    test "delete_movie/1 deletes the movie" do
      movie = movie_fixture()
      assert {:ok, %Movie{}} = Cinema.delete_movie(movie)
      assert_raise Ecto.NoResultsError, fn -> Cinema.get_movie!(movie.id) end
    end

    test "change_movie/1 returns a movie changeset" do
      movie = movie_fixture()
      assert %Ecto.Changeset{} = Cinema.change_movie(movie)
    end
  end
end
