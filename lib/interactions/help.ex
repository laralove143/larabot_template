defmodule Bot.Interactions.Help do
  use Larabot.Interaction.Help

  @impl Larabot.Interaction.Help
  def title, do: "Bot"

  @impl Larabot.Interaction.Help
  def description, do: "Bot"

  @impl Larabot.Interaction.Help
  def components, do: ["Bot"]

  @impl Larabot.Interaction.Help
  def homepage, do: "bot"
end
