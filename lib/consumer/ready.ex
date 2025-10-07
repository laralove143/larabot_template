defmodule Bot.Consumer.Ready do
  @behaviour Larabot.Consumer

  alias Bot.Schedule

  def handle(_) do
    Bot.Interactions.register()

    Schedule.UpdateStatus.start()
  end
end
