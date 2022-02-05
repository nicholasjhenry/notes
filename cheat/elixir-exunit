defp assert_down(pid) do
  ref = Process.monitor(pid)
  assert_receive {:DOWN, ^ref, _, _, _}
end

## Parametized test

for {values, cases} <- @parameters do
  for {actual, expected} <- cases do
    test "#{inspect(actual)} == #{inspect(expected)}" do
      assert unquote(Macro.escape(actual)) == unquote(Macro.escape(expected))
  end
end

## CLI

mix test --max-failures 1 --seed 0
