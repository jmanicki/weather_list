defmodule WeatherList.CityTest do
  use WeatherList.ModelCase

  alias WeatherList.City

  @valid_attrs %{name: "some content", weather: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = City.changeset(%City{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = City.changeset(%City{}, @invalid_attrs)
    refute changeset.valid?
  end
end
