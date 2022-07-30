defmodule ExampleTest do
  use ExUnit

  # NOTE:  mix test.watch test/my_app --only wip --trace --seed 0

  # NOTE: when-given
  describe "{{action}}ing with {{setup}}" do
    setup [:create_user]

    # NOTE: then
    test "should {{expected result}}" do
      ## ARRANGE

      ## ACT

      ## ASSERT
    end
  end

  defp create_user(_context) do
    %{user: %User{}}
  end
end
