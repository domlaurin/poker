require 'hand'
require 'card'

describe Hand do

    describe "#royal_flush" do 

    let(:royal_flush_hand1)  {Hand.new(Card.new(14, :H), Card.new(13, :H),Card.new(12, :H),Card.new(11, :H), Card.new(10, :H)) }

    let(:not_royal_flush_hand1)  {Hand.new(Card.new(12, :H), Card.new(13, :S),Card.new(12, :H),Card.new(11, :H), Card.new(10, :H)) }

    it 'returns true if the hand is a royal flush' do
      expect(royal_flush_hand1.royal_flush?).to eq(true)
    end
    it 'returns false if the hand is not a royal flush' do
     expect(not_royal_flush_hand1.royal_flush?).to eq(false)
    
    end

end


#     describe "#straight_flush" do 
        
#     end
#     let(:straight_flush_hand)  {Hand.new(Card.new(14, :H), Card.new(13, :H),Card.new(12, :H),Card.new(11, :H), Card.new(10, :H)) }
#     let(:not_royal_flush_hand1)  {Hand.new(Card.new(12, :H), Card.new(13, :S),Card.new(12, :H),Card.new(11, :H), Card.new(10, :H)) }
#     it 'returns true if the hand is a royal flush' do
#       expect(royal_flush_hand1.royal_flush).to eq(true)
#     end
#     it 'returns false if the hand is not a royal flush' do
#      expect(not_royal_flush_hand1.royal_flush).to eq(false)
    
#     end

end

