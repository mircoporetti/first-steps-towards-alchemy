fizz_buzz_calculator = fn
  {0,0,_} -> "FizzBuzz"
  {0, _, _} -> "Fizz"
  {_, 0, _} -> "Buzz"
  {_,_,a} -> a
end


fizz_buzz = fn
  n  -> fizz_buzz_calculator.({rem(n,3), rem(n,5), n})
end

IO.puts fizz_buzz.(10)
IO.puts fizz_buzz.(11)
IO.puts fizz_buzz.(12)
IO.puts fizz_buzz.(13)
IO.puts fizz_buzz.(14)
IO.puts fizz_buzz.(15)
IO.puts fizz_buzz.(16)