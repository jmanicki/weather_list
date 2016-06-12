defmodule WeatherList.Router do
  use WeatherList.Web, :router

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

  scope "/", WeatherList do

    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController
    resources "/citylist", CityController
    resources "/cities", PostController, only: [:index,:show]
    get "/test", WeatherListController, :index
    get "/test/:messenger", WeatherListController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", WeatherList do
  #   pipe_through :api
  # end
end
