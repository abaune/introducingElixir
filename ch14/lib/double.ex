defmodule Double do
  defmacro double x do
    # {:*, [], [2, x]}
    quote do 
      2 * unquote(x)
      # all macro's arguments are already in internal format, don't forgt to unquote
    end
  end
end