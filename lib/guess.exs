defmodule Guess do

  def at(number, first..last) when is_integer(number) do
    if not number in first..last do
      raise RuntimeError, message: "The number provided is not in the range."
    end
    guess(number, first..last, halfway(first..last))
  end

  def guess(number, first..last, guessedNumber) when guessedNumber > number do
    IO.puts "Is it #{guessedNumber}"
    guess(number, first..(guessedNumber - 1), halfway(first..(guessedNumber - 1)))
  end
  def guess(number, first..last, guessedNumber) when guessedNumber < number do
    IO.puts "Is it #{guessedNumber}"
    guess(number, (guessedNumber + 1)..last, halfway((guessedNumber + 1)..last))
  end
  def guess(number, first..last, guessedNumber), do: guessedNumber

  def halfway(first..last), do: div(first + last, 2)

end
