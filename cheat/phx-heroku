## Runtime configuration

    port = System.get_env("PORT", "4000")

    {endpoint_scheme, endpoint_host, endpoint_port} =
      case config_env() do
        env when env in [:staging, :prod] ->
          host =
            cond do
              # Configure for prod environment
              System.get_env("ENDPOINT_HOST") ->
                System.fetch_env!("ENDPOINT_HOST")

              # Configure for staging environment on Heroku
              System.get_env("HEROKU_APP_NAME") ->
                System.fetch_env!("HEROKU_APP_NAME") <> ".herokuapp.com"

              true ->
                raise "environment variable ENDPOINT_HOST is missing."
            end

          {System.get_env("ENDPOINT_SCHEME", "https"), host, System.get_env("ENDPOINT_PORT", "443")}

        _ ->
          # Default configuration for local environments
          {"http", "localhost", port}
      end

    endpoint_url =
      "#{endpoint_scheme}://#{endpoint_host}:#{endpoint_port}"
      |> URI.parse()
      |> URI.to_string()
