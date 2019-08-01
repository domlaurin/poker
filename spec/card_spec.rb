require 'card.rb'

describe Card do
  subject (:card) {Card.new(:Spade, :A)}
  it "takes in a suit" do
    expect(card.suit).to eq(:Spade)
  end

  it "takes in a value" do
    expect(card.value).to eq(:A)
  end
end




(card)