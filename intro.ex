defmodule Intro do
  # function declaration
  def myfun(x) do
    x*2
  end

  # one-line function
  def myfun2(x), do: x*2

  # pattern matching
  def pm(:hello), do: :world
  def pm("goodbye"), do: :ok_see_you
  def pm(_), do: :catch_all

  # using lambda funs
  def use_lambda() do
    fun = ret_fun()
    fun.()
  end

  # module private function!
  defp ret_fun() do
    fn -> :lambda end
  end

  def a_list_comprehension do
    for x <- [1,2,3], x > 1 do
      IO.puts x
    end
    for x <- [?a,?b,?c], x > ?a, do: IO.puts [x]
  end
end

# Several modules in one file
# Nested modules
# filename <-> modname relation is gone!
defmodule Babuska do
  defmodule Dolls do
    defmodule Rock do
      def this_is_the_end, do: :the_end
    end
  end
end

# Let's have a look at the beam files...

defmodule AliasSth do
  # lexical scope
  alias Babuska.Dolls.Rock, as: Rock
  # shorthand notation:
  # alias Babuska.Dolls.Rock

  def the_end, do: Rock.this_is_the_end
end
