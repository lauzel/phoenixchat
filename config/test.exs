use Mix.Config

# Configure your database
config :chat, Chat.Repo,
  username: "postgres",
  password: "root",
  database: "chat_test",
  hostname: "db",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat, ChatWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
