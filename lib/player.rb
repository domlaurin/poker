class Player

    attr_accessor :hand
    attr_accessor :pot

    def initialize(pot = 10000)
        @pot = pot
        @hand = []
    end

    def discard?
        puts 'write nums separated by commas with no spaces'
        indeces = gets.chomp #"1,2,3" "1"
        indeces_array = indeces.split(",")
        'some code here that discards stuff'
        return indeces_array.sort #[1,2,3]
    end

    def decision?
        puts 'raise, fold, check?'
        decision = gets

    end

end