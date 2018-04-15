defmodule DropServer do
  use GenServer

  defmodule State do
    defstruct count: 0
  end

  # This is a convenience mehtod for startup
  def start_link do
    GenServer.start_link(__MODULE__, [], [{:name, __MODULE__}])
  end

  # These are the callbacks that the GenServer behavior will use
  def init([]) do
    {:ok, %State{}}
  end
  
  def handle_call(request, _from, state) do
    distance = request
    reply = {:ok, fall_velocity(distance)}
    new_state = %State{count: state.count + 1}
    {:reply, reply, new_state}
  end

  def handle_cast(_msg, state) do
    IO.puts("so far, calculated #{state.count} velocitites.")
    {:noreply, state}
  end

  def handle_info(_info, state) do
    {:noreply, state}
  end

  def terminate(_reason, _state) do
    {:ok}
  end

  def code_change(_old_version, state, _extra) do
    {:ok, state}
  end

  # internal function
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.1 * distance)
  end

end
