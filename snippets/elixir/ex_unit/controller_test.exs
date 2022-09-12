defmodule ControllerTest do
  use ConnCase

  # when, given, then

  describe "requesting to create a {{type}} resource with valid params" do
    test "should respond successfully", %{conn: conn} do
      ## ARRANGE
      valid_params = %{}

      ## ACT
      conn_with_response =
        post conn, resource_path(conn, :create, valid_params)

      ## ASSERT
      assert response(conn_with_response, :created)
    end
  end

  defp create_foo(_context) do
    %{foo: %Foo{}}
  end
end
