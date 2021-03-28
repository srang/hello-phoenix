FROM bitwalker/alpine-elixir-phoenix
# Set exposed ports
EXPOSE 4000
ENV PORT=4000

ADD ./app .

# Cache elixir deps
RUN mix do deps.get, deps.compile && \
    cd assets && \
    npm install deploy && \
    cd - && \
    mix compile

CMD ["mix", "phx.server"]
