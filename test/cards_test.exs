defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  #Types od testing bellow
  # (case)assertion testing (common)
  # doctesting -- runs code within example block of code (This is KICK ASS)

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end
end
