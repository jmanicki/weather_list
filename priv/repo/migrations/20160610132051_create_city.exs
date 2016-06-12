defmodule WeatherList.Repo.Migrations.CreateCity do
  use Ecto.Migration

  def change do
    create table(:citylist) do
      add :name, :string
      add :weather, :string

      timestamps
    end

  end
end
