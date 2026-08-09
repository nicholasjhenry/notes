defmodule MyExampleTest do
  use ExUnit.Case, async: true
  import Mox

  setup :verify_on_exit!
  setup :defaults

  defp defaults(ctx) do
    default_ctx = %{
      key: :value
    }

    Enum.into(ctx, default_ctx)
  end

  # Given (the "when" is the function under test itself)
  describe "my_function/1 given some state" do
    setup [:stub_dependency_1, :stub_dependency_2]

    # Then — outcome, query answer comes from the setup stubs
    test "some outcome of the subject under test" do
      assert {:ok, _} = Subject.my_function(:value)
    end

    test "some other outcome of the subject under test" do
      assert {:ok, _} = Subject.my_function(:value)
    end

    # Then — command: the interaction IS the behavior, so expect lives here
    test "expected behaviour of dependency 1", _ctx do
      Dependency1
      |> expect(:my_function, fn arg ->
        assert arg == :value
        {:ok, arg}
      end)

      assert {:ok, _} = Subject.my_function(:value)
    end

    test "expected behaviour of dependency 2", _ctx do
      Dependency2
      |> expect(:my_function, fn arg ->
        assert arg == :value
        {:ok, arg}
      end)

      assert {:ok, _} = Subject.my_function(:value)
    end
  end

  defp stub_dependency_1(_ctx) do
    stub(Dependency1, :my_function, fn arg -> {:ok, arg} end)
    :ok
  end

  defp stub_dependency_2(_ctx) do
    stub(Dependency2, :my_function, fn arg -> {:ok, arg} end)
    :ok
  end
end
