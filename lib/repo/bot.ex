defmodule Bot.Repo.Bot do
  use Ecto.Schema

  alias Bot.Repo

  @primary_key {:user_id, :integer, autogenerate: false}
  schema "bot" do
    field(:bot, :string)
  end

  def insert(user_id) do
    Repo.insert!(%__MODULE__{user_id: user_id, bot: "bot"},
      on_conflict: :replace_all,
      conflict_target: :user_id
    )
  end

  def get(user_id) do
    Repo.get(__MODULE__, user_id)
  end
end
