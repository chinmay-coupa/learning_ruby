class Dice
    attr_accessor :value

    def initialize
        roll
    end

    def roll
        @value=get_rand_number
    end

    def quit
        return 
    end

    def sides
        6
    end

    def display
        "[#{value}]"
    end

    def get_rand_number
        rand(sides)+1 
    end

end