print"What is your name?"
name=gets.chomp
puts "Hello #{name}.\nWe are going to play guessing game you have 3 guesses to guess number"
count=1
guess_no=rand(10)
won=false
while count<=3
    print"What is your guess #{count}:"
    guess=gets.chomp.to_i
    if guess==guess_no
        puts "Great guessing,my number was: #{guess_no}"
        won=true
        break
    end
    count+=1
end
if won==false
    puts "Sorry,You are out of guesses.Number was #{guess_no}"
end
