require 'player'
require 'stringio'
describe Player do

    describe "initialize" do
        let (:player1) {Player.new}

        it "initializes the default player" do 
            expect(player1.hand).to eq([])
        end

        it "initializes the default player with no pot arg" do
            expect(player1.pot).to eq(10000)
        end

    end

    describe "#discard" do
        let (:hand1) {Hand.new(Card.new(14, :H), Card.new(13, :H),Card.new(12, :H),Card.new(11, :H), Card.new(10, :H))}

        before(:each) {player1.hand = hand1}

        before do
            $stdin = StringIO.new("1,2,3")
        end

        after do
        $stdin = STDIN
        end
        
        it "should be '1,2,3'" do
            expect(player1.discard).to be == '1,2,3'
        end

        it "length of hand after discard" do 
            expect(player1.hand.length).to be == 2
        end
    end
end

def capture_name
  $stdin.gets.chomp
end

describe 'capture_name' do
  before do
    $stdin = StringIO.new("James T. Kirk\n")
  end

  after do
    $stdin = STDIN
  end

  it "should be 'James T. Kirk'" do
    expect(capture_name).to be == 'James T. Kirk'
  end
end

# do we need a null card type of card because I was thinking that we would have the player decide which cards to discard by selecting the indicies of the card, but if they choose the cards in the wrong order, then the indices will shift, 

# describe Table do

#     let(:moth) {double(say_something => lamp)}
#     let(:octopus) {double(say_something => lamp)}
#     Moth.new.say_something #=> lamp
#     Moth.new(octopus) 
    