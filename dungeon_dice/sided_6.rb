require_relative 'dice.rb'

class SixSide < Dice
    def sides
        6
    end

    def display
        "[#{value}]"
    end
    
end
