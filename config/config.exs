import Config

config :bot,
  ecto_repos: [Bot.Repo],
  guild_id: "903367565349384202"

config :bot, Bot.Repo,
  database: "bot_repo",
  username: "bot",
  hostname: "localhost"

config :nostrum,
  ffmpeg: nil,
  # log_full_events: true,
  # log_dispatch_events: true,
  gateway_intents: []

config :logger, :console,
  level: if(Mix.env() == :prod, do: :info, else: :debug),
  metadata: [:shard, :guild, :channel]

config :disco_log,
  enable: Mix.env() == :prod,
  otp_app: :bot,
  guild_id: "903367565349384202",
  category_id: "1412530342363009135",
  occurrences_channel_id: "1412530344158302240",
  info_channel_id: "1412530345701806101",
  error_channel_id: "1412530349162102917"
