defmodule Drop do
  @moduledoc """
  Functions calculating velocities achieved by objects dropped in a vacuum.
  from *Introducing Elixir*, Second Edition, O'Reilly Media, Inc., 2017.
  Copyright 2017 by Simon St.Laurent and J. David Eisenberg.
  """
  @vsn 0.1

  # Commenting out for now because Elixir is awesome and during compile throws this warning
  # due to function below: this clause cannot match because a previous clause at line 4 always matches
  # This is because we default to 9.8 below and here. Whoa!
  # def fall_velocity(distance) do
  #   import :math, only: [sqrt: 1]
  #   sqrt(2 * 9.8 * distance)
  # end

  @doc """
  Calculates the velocity of an object falling on Earth
  as if it were in a vacuum (no air resistance).  The distance is
  the height from which the object falls, specified in meters,
  and the function returns a velocity in meters per second.
  """

  @spec fall_velocity(number(), number())  :: float()

  def fall_velocity(distance, gravity \\ 9.8) do
    :math.sqrt(2 * gravity * distance)
  end
end

# Note: you can put all commands in an .exs (Elixir script) and simpy c(file.exs)
# Note: we can also import all except some with import :math, except: [sin: 1, cos: 1, ...]
