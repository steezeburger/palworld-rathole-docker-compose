default:
  @just --list

set dotenv-load

# copies .env.example to .env
gen-env:
  cp .env.example .env

# generate conf files from templates and .env
gen-rathole-configs:
  envsubst < rathole-conf/client.toml.template > rathole-conf/client.toml
  envsubst < rathole-conf/server.toml.template > rathole-conf/server.toml

# starts the client in the background
start-client:
  docker compose up -d palworld-rathole-client

# starts the server in the background
start-server:
  docker compose up -d palworld-rathole-server

# follow logs
logs:
  docker compose logs -f
