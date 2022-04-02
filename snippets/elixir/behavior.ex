# lib/my_app/service.ex

defmodule MyApp.Service do
  @behaviour MyApp.Service.Behaviour

  @impl true
  def command(attrs) do
    get_impl().command(attrs)
  end

  def get_impl do
    Application.get_env(:my_app, MyApp.Service)[:impl] ||
      MayApp.Service.Fake
  end

  def set_impl(module) do
    Application.put_env(:my_app, MyApp.Service, impl: module)
  end
end

# lib/my_app/service/behaviour.ex

defmodule MyApp.Service.Behaviour do
  @moduledoc """
  Defines the behaviour for service.
  """

  alias MyApp.Service.SomeDataType

  @callback command(map()) :: {:ok, SomeDataType.t()}
end

# lib/my_app/service/fake.ex

defmodule MyApp.Service.Fake do
  @behaviour MyApp.Service.Behaviour

  alias MyApp.Service.SomeDataType

  @impl true
  def command(_attrs) do
    {:ok, %SomeDataType{}}
  end
end

# config.exs

config :my_app, MyApp.Service, impl: MyApp.Service.ConcreteImplementation
