ExUnit.start

Mix.Task.run "ecto.create", ~w(-r WeatherList.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r WeatherList.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(WeatherList.Repo)

