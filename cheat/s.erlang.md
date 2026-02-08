Get the semver:

    erl -noshell -eval '{ok, Version} = file:read_file(filename:join([code:root_dir(), "releases", erlang:system_info(otp_release), "OTP_VERSION"])), io:fwrite(Version), halt().'

Or in IEX:

    :code.root_dir() |> Path.join("releases") |> Path.join(:erlang.system_info(:otp_release)) |> Path.join("OTP_VERSION") |> File.read!() |> String.trim()

