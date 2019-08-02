class Hand(card1, card2, card3, card4, card5)

    def initialize
        @card1 = card1
        @card2 = card2
        @card3 = card3
        @card4 = card4
        @card5 = card5
        @five_cards = [card1, card2, card3, card4, card5]
        @pair_hash = Hash.new(0)
        @five_cards.each { |card| @pair_hash[card.value] += 1 }
    end

    def royal_flush?
      self.flush? && self.straight? && @pair_hash.values.include?(A) && @pair_hash.values.include?(K)
    end

    def straight_flush?
      self.straight && self.flush? && !self.royal_flush?
    end

    def four_of_a_kind?
      @pair_hash.has_value?(4)
    end

    def full_house?
      @pair_hash.values.include?(3) && @pair_hash.values.include?(2)
    end

    def flush?
      suit = @five_cards[0].suit
      @five_cards.all?{ |card| card.suit == suit }
    end


    def straight?
      if @pair_hash.length != 5
        false
      end
      if @pair_hash.values.sort == [2, 3, 4, 5, 14]
        true
      end
      @pair_hash.values.sort.each_with_index do |card, i|
        if @five_cards[i].value + 1 == @five_cards[i+1].value
          next
        else
          false
        end
      end
      true
      end
    end

    def three_of_a_kind?
      @pair_hash.has_value?(3)
    end
      
    def two_pair?
      @pair_hash.values.select {|value| value == 2}.length == 2
    end

    def one_pair?
      @pair_hash.has_value?(2)
    end

    def high_card?
      true
    end

