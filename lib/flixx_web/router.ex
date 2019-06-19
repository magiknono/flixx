defmodule FlixxWeb.Router do
  use FlixxWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FlixxWeb do
    pipe_through :browser

    get "/", MovieController, :index
    resources "/movies", MovieController
  end

  # Other scopes may use custom stacks.
  # scope "/api", FlixxWeb do
  #   pipe_through :api
  # end
end
