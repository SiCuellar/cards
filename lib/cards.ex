defmodule Cards do
  def create_deck do
    ["Ace", "Two", "Three"]
  end

  # Arity - the number of arguments a function accepts (shuffle/1)
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end

# iex -S mix  gives us elixir interactive shell
# convention to use double quotes
# we never modify data structures, new ones are created(immutability)
