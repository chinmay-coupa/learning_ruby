require_relative 'dice.rb'

class TwelveSide < Dice
    def sides
        12
    end

    def display
        "[#{value}]"
    end
    
end
