# frozen_string_literal: true

host = ENV.fetch("REDIS_HOST", "127.0.0.1")
port = ENV.fetch("REDIS_PORT", "6379")
database = ENV.fetch("REDIS_DATABASE", "0")

Sidekiq.configure_server do |c|
  c.redis = { url: "redis://#{host}:#{port}/#{database}" }
end

Sidekiq.configure_client do |c|
  c.redis = { url: "redis://#{host}:#{port}/#{database}" }
end
