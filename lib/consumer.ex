defmodule Timezoner.Consumer do
  use Nostrum.Consumer

  alias Bot.Consumer

  def handle_event({:READY, _, _}) do
    Consumer.Ready.handle(nil)
  end
end
