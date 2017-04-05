
class Card
  attr_reader :value, :suit
  include Comparable

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def ==(other_card)
    @value == other_card.value && @suit == other_card.suit
  end

  def <=>(other_card)
    comp = @value <=> other_card.value
    if comp == 0
      comp = @suit <=> other_card.suit
    end
    comp
  end

end
