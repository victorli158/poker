require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new(:q, :heart) }
  SUITS = [:diamond, :club, :heart, :spade]
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, :j, :q, :k, :a]

  context "#initialize" do
    it "has a valid suit" do
      pass = SUITS.include?(card.suit)
      expect(pass).to be_truthy
    end

    it "has a valid value" do
      pass = VALUES.include?(card.value)
      expect(pass).to be_truthy
    end
  end
end
