write methods to check for each type of hand
rank royal_flush as 1
straight 2
four of a kind 3
full_house


Royal flush	
Straight flush 
Four of a kind
Full house
Flush 
Straight
Three of a kind
Two pair
One pair
High card
 
10 including high 



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

    [2,3,4,5,6,7,8,9,10,:J,:Q,:K,:A]
    # [:A,2,3,4,5,6,7,8,9,10,:J,:Q,:K]

    def high_card?

    end

    def jumble_sort(arr)
        alphabet = [2,3,4,5,6,7,8,9,10,:J,:Q,:K,:A]
        sorted = []
        alphabet.each do |ch1|
          arr.each do |ch2|
            if ch1 == ch2
                sorted << ch2
            end
          end
        end
        sorted
      end

    def one_pair?
      @pair_hash.has_value?(2)
    end

    def two_pair
      @pair_hash.values.select {|value| value == 2}.length == 2
    end

    def three_of_a_kind?
      @pair_hash.has_value?(3)
    end
        
    def four_of_a_kind?
      @pair_hash.has_value?(4)
    end
        

end