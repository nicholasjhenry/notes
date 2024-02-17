```elixir
defmodule MyApp.Calendars do
  @moduledoc """
  The context module for managing personalized calendars.
  """

  import Ecto.Query, warn: false

  alias MyApp.Calendars.{Calendar, Share}
  alias MyApp.Repo

  # SECTION: Calendars

  def get_calendar!(id) do
    Calendar
    |> Repo.get!(id)
    |> preload_calendar
  end

  def create_calendar!(attrs) do
    %Calendar{}
    |> Calendar.changeset(attrs)
    |> Repo.insert!(on_conflict: :nothing, conflict_target: [:user_id])
  end

  def share_calendar!(calendar) do
    calendar
    |> Ecto.build_assoc(:share)
    |> Repo.insert!(on_conflict: :nothing, conflict_target: [:user_id])

    preload_calendar(calendar, force: true)
  end

  def unshare_calendar!(%{user_id: user_id} = calendar) do
    query = where(Share, user_id: ^user_id)

    Repo.delete_all(query)

    preload_calendar(calendar, force: true)
  end

  defp preload_calendar(struct, opts \\ []) do
    Repo.preload(struct, [:share], opts)
  end
end

```
