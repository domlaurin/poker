class Player

    attr_accessor :hand
    attr_accessor :pot

    def initialize(pot = 10000)
        @pot = pot
        @hand = []
    end

    def discard?
        puts ''
        gets
    end

    def decision?
        puts 'raise, fold, check?'
        decision = gets

    end

end