Elixir:

    fswatch --latency=0.01 --one-per-batch lib/ test/ | MIX_ENV=test mix do format, dialyzer, test --stale, run --no-halt -e "IO.gets(:stdio, ''); IO.puts 'Restarting...'; :init.restart()"

     fswatch -0 --latency=0.01 --one-per-batch lib test | MIX_ENV=test xargs -0 -n 1 mix do format, dialyzer, test --stale test/

fswatch -0 --latency=0.01 --one-per-batch lib test | MIX_ENV=test xargs -0 -n 1 mix format mix.exs "lib/**/*.{ex,exs}" "test/**/*.{ex,exs}"
