FROM bitwalker/alpine-elixir-phoenix
RUN apk --no-cache --update add \
    vim && \
    update-ca-certificates --fresh && \
    rm -rf /var/cache/apk/*
RUN mix archive.install hex phx_new 1.5.6 --force
