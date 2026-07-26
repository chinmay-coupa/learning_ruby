require_relative 'dice.rb'

class TwentySide < Dice
    def sides
        20
    end

    def display
        "[#{value}]"
    end

    
end