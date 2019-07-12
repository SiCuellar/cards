defmodule Cards do
  @moduledoc """
    Provides methods for createing and handeling a deck of cards
  """
  @doc """
    Returns a list of strings representing playing cards
  """

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    #list comprehension
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  # Arity - the number of arguments a function accepts (shuffle/1)
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck) #encodes file (built in erlang method)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term
      {:error, reason} -> "That file does not exists"
    end
  end

  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
end

# iex -S mix  gives us elixir interactive shell
# convention to use double quotes
# we never modify data structures, new ones are created(immutability)

#tuple {} or hash for ruby
#Tumple act like --> Cards.deal(deck, 5) #{ hand: [], deck: [] }
