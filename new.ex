defmodule New do

  def pipes do
    [1,2,3,4]
    |> Enum.reverse
    |> IO.inspect
    |> Enum.filter(fn(x) -> rem(x,2) == 0 end)
    |> IO.inspect
    |> Enum.sum
    # Inspect the above!
  end

  def no_parens_necessary do
    what = "world"
    IO.puts("hello #{what}")
    IO.puts "hello #{what}"
    # Is this a good thing?
  end

  def strings do
    IO.inspect "strings_are_binaries" == <<"strings_are_binaries">>
    IO.inspect [?h,?e,?l,?l,?o] == 'hello'
    # UTF-8 all the way
    IO.puts "☀ ★ ☂ ☻ ♞ ☯ ☭ ☢ € → ☎ ♫ ♎ ⇧ ☮ ♻ ⌘ ⌛ ☘ ☊ ♔ ♕ ♖ ☦ ♠ ♣ ♥ ♦ ♂ ♀"
    IO.puts "hellö"
    "hellö" |> String.upcase |> IO.puts
    "hellö" |> byte_size |> IO.puts
    "hellö" |> String.length |> IO.puts
  end

  # default arguments
  def join(a, b, sep \\ " ") do
      a <> sep <> b
  end
  # Another example:  Keyword.get
  
  @doc """
  Here is some documentation for a function
  """
  def fun_with_doc, do: :ok
  # Have a look at docs from shell!
end
