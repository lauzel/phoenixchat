from elixir

RUN mix local.hex --force \
    && mix local.rebar --force \
    && mix archive.install hex phx_new 1.4.4 --force \
    && apt-get update \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash \
    && apt-get install -y apt-utils \
    && apt-get install -y nodejs \
    && apt-get install -y build-essential \
    && apt-get install -y inotify-tools \
    && mix local.rebar --force

RUN ls    

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

EXPOSE 4000

CMD ["mix", "phx.server"]