defmodule SansTitreWeb.Router do
  use SansTitreWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SansTitreWeb do
    pipe_through :api

    get "/posts", PostController, :index
    get "/posts/:slug", PostController, :show
  end
end
