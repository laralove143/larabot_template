defmodule Bot.Interactions do
  use Larabot.Interactions

  def commands, do: [Bot.Interactions.Help]
end
