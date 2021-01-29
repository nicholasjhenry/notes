defmodule MyModule do
  use GenServer

  # Public API

  def start_link(opts) do
    {initial_value, opts} = Keyword.pop(opts, :initial_value, :my_state)
    GenServer.start_link(__MODULE__, initial_value, opts)
  end

  # Callbacks

  @impl true
  def init(:my_state) do
    {:ok, :my_state}
  end

  @impl true
  def handle_call(:action, _from, :my_state = state) do
    return = :my_state
    new_state = :my_state
    {:reply, return, new_state}
  end

  @impl true
  def handle_cast(:action, :my_state = state) do
    new_state = :my_state
    {:noreply, new_state}
  end

  # Out of band messages

  @impl true
  def handle_info(msg, state) do
    new_state = state
    {:noreply, new_state}
  end

  # Termination

  def stop(pid, reason \ :normal, timeout \ :infinity) do
    GenServer.stop(pid, reason, timeout)
  end

  def terminate(reason, state) do
    # Perform cleanup here
  end
end
