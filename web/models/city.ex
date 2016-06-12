defmodule WeatherList.City do
  use WeatherList.Web, :model

  schema "citylist" do
    field :name, :string
    field :weather, :string

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields)
  end
end
