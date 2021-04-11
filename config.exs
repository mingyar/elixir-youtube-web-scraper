use Mix.Config

def application do
    [applications: [:logger, :httpoison, :hound]]
end

config :hound,
  port: 4444,
  driver: "selenium",
  host: "localhost"
