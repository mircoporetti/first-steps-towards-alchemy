defmodule Gcd do

  def gcd(x,0), do: x
  def gcd(x,y) when is_integer(x) and x >= 0 and is_integer(y) and y >= 0 do
    gcd(y, rem(x,y))
  end

end