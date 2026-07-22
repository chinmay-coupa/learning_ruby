class Dice
    attr_accessor=:die1,:die2
    def initialize=(value1=1,value2=3)
        @die1=value1
        @die2=value2
    end 

    def roll
        @die1=rand(1..6)
        @die2=rand(1..6)
        [[@die1],[@die2]]
    end

end

puts "Welcome to dice roller game"
d=Dice.new

loop do 
    print "Enter 'r' to roll and 'q' to quit:"
    act=gets.chomp.downcase

    if act=="r"
        result=d.roll
        puts "The dice you rolled showed :[#{result[0]}] [#{result[1]}] }"

    elsif act=="q"
        puts "Thanks for playing,Bye!"
        break
    
    else
        puts "put valid input 'r' or 'q'. "
    
    end

end