defmodule Bot.Schedule.UpdateStatus do
  use Larabot.Schedule

  alias Nostrum.Api.Self
  alias Nostrum.Cache.GuildCache

  def interval, do: :timer.hours(1)

  def task do
    guild_count = Enum.count(GuildCache.all())
    Self.update_status(:online, "in #{guild_count} servers!", 1)
  end
end
