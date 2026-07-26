require_relative 'sided_4.rb'
require_relative 'sided_8.rb'
require_relative 'sided_6.rb'
require_relative 'sided_12.rb'
require_relative 'sided_20.rb'

dice_size={
    4=>FourSide.new,
    6=>SixSide.new,
    8=>EightSide.new,
    12=>TwelveSide.new,
    20=>TwentySide.new,
}

def status(dice)
     "#{dice.sides}:#{dice.display}"
end

n_d=Dice.new
puts status(n_d)

response=nil 

until response=='q'

    puts "enter r to roll , c to change and q to quit"
    print ">"
    response=gets.chomp

    if response=='c'
        puts "Select from avaialable dice sizes :#{dice_size.keys.join(', ')}"
        print '>'
        new_dice_no=gets.chomp
        new_dice=dice_size[new_dice_no.to_i]
        if new_dice==nil
            puts "Enter a valid number"
        else
            n_d=new_dice
            n_d.roll
            puts status(n_d)
        end

    elsif response=='r'
        n_d.roll
        puts status(n_d)
    end
end
        






