puts "The words you provide to us will be used to create a funny sentence"\

# print"Give me a verbs:"
# verb=gets.chomp

# print"Give me an adjective:"
# adj1=gets.chomp

# print"Give me another adjective:"
# adj2=gets.chomp

# print"Give me Noun:"
# noun=gets.chomp
blanks=["verb","adjective","adjective","noun"]
vowels=["a","e","i","o","u"]

answers=blanks.map do |request|
    article=vowels.include?(request[0])? "an" : "a"
    print"Give me #{article} #{request}:"
    response=gets.chomp
end

puts "I have decided to #{answers[0]} a #{answers[1]} party for my #{answers[2]} #{answers[3]}."