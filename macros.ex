defmodule Macros do
  defmacro show_ast(x) do
    IO.inspect x
  end

  defmacro manip_ast({:*, meta, vals}) do
    {:+, meta, vals}
  end
end
