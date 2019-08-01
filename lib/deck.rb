class Deck
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A ]
  SUITS = [:Spade, :Heart, :Diamond, :Club]

  attr_reader :all_cards
  def initialize
    @all_cards = []
    self.populate

  
  end

  def populate
    VALUES.each do |value|
      SUITS.each do |suit|
        @all_cards << Card.new(suit, value)
      end
    end
  end

  def shuffle_deck
    @all_cards.shuffle!
  end

end