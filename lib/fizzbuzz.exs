defmodule FizzBuzz do

  def fizzBuzz(n) do
    fizz_buzz_calculator = fn
      {0,0,_} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_,_,c} -> c
    end

    fizz_buzz_calculator.({rem(n,3), rem(n,5), n})
  end

end