defmodule SansTitreWeb.Router do
  use SansTitreWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SansTitreWeb do
    pipe_through :api
  end
end
