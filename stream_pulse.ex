# p = Pulse.new(60)
# d = p |> Stream.each(&Pulse.display(&1))
# s = d |> Stream.each(&Pulse.speak(&1))

defmodule Pulse do
  def new(total) do
    # Args: init, next/halt, cleanup
    Stream.resource(
      fn ->
        total end,
      # get next
      fn(0) -> {:halt, 0}
        (remaining) ->
          :timer.sleep(1000)
          {[IO.inspect({"beat", remaining})], remaining-1}
      end,
      fn _ -> end # no actual resource to clean up.
    )
  end

  def display(text) do
    spawn fn -> :os.cmd('notify-send #{inspect text}') end
  end

  def speak({text, _}) do
    spawn fn -> :os.cmd('espeak #{text}') end
  end
end
