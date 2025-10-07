defmodule Bot.Application do
  use Application

  def start(_, _) do
    Supervisor.start_link(
      [
        Bot.Repo,
        Bot.Schedule.UpdateStatus,
        Bot.Consumer
      ],
      strategy: :one_for_one,
      name: __MODULE__
    )
  end
end
