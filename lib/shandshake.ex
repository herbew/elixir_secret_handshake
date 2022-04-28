defmodule SecretHandshakeBinary do
  @doc """
  The bits are set:
 
  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump
 
  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(number :: integer) :: list(String.t())
  def commands(number) do
    Integer.digits(number, 2)
    |> Enum.reverse
    |> Enum.with_index
    |> Enum.reduce([], &binary_command/2)
    |> Enum.reverse
  end
  
  defp binary_command({0, _}, command), do: command
  defp binary_command({_, 0}, command), do: ["wink" | command]
  defp binary_command({_, 1}, command), do: ["double blink" | command]
  defp binary_command({_, 2}, command), do: ["close your eyes" | command]
  defp binary_command({_, 3}, command), do: ["jump" | command]
  defp binary_command({_, 4}, command), do: Enum.reverse(command)
  defp binary_command({_, _}, command), do: command
end
