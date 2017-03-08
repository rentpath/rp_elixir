FROM elixir:1.4.2

RUN apt-get update \
 && apt-get install -y mysql-client \
 && mix local.hex --force \
 && mix local.rebar --force

