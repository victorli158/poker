class Hand
  attr_reader :player, :cards
  include Comparable
  
  def initialize(player)
    @player = player
    @cards = []
  end

end
