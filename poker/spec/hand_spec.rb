require 'rspec'
require 'hand'

describe Hand do
  let(:player) { double("player") }
  subject(:hand) { Hand.new(player) }

  context "#initialize" do
    it "initializes to an empty hand" do
      expect(hand.cards).to be_empty
    end

    it "initializes with a player" do
      expect(hand.player).to be(player)
    end
  end

end
