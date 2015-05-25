defmodule Proto do
  # protocols! A small example.
  def this_doesnt_work do
    var = {:my, :tuple}
    IO.puts "hello #{var}"
  end

  defimpl String.Chars, for: Tuple do
    def to_string({a,b}) do
      "{#{a},#{b}}"
    end
  end

  # Instead we could use `inspect` - it was made for converting data
  # structures into text.
end

defmodule MyMod do
  defstruct a: 1, b: 2

  defimpl String.Chars, for: MyMod do
    def to_string(mod) do
      "A protocol at work #{mod.a}, #{mod.b}"
    end
  end
end
