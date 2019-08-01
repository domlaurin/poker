require 'deck.rb'

describe Deck do 

    subject(:deck) {Deck.new}          
    
    it "has 52 cards" do
        expect(deck.all_cards.length).to eq(52)
    end

    it "shuffle method works" do 
        expect(deck.shuffle_deck).to_not eq(Deck.new.all_cards)
    end
end
