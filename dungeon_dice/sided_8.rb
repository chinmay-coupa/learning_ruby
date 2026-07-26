require_relative 'dice.rb'

class EightSide < Dice
    def sides
        8
    end

    def display
        "[#{value}]"
    end
        
end

