require_relative 'learning.rb'

Chinmay=Person.new
Chinmay.first_name="chinmay"
Chinmay.last_name="ghodake"
puts Chinmay.first_and_last_name
puts Chinmay.initial_and_last_name


# pig1=Animal.new
# pig1.color="pink"
# puts pig1.noise
# puts pig1.color

radio1=Radio.new
radio1.volume=9
radio1.volume_status

pig2=Animal.new({noise:"oninki2"}) 
puts pig2.noise

p1=Product.exclusive
puts p1.price

Animal.types.each do |t|
    puts t
end 

puts Animal.create_pig.noise
blacky=Animal.create_pig
puts blacky.noise
puts Animal.count_animals

mtb=Bicycle.new({color:"Black",company:"Honda"})
puts mtb.description

# blog=BlogPost.new 
# blog.statuses.each {|s| puts s}

BlogPost.statuses.each {|s| puts s}
BlogPost.statuses=(["new","old","open",'closed'])
BlogPost.statuses.each {|s| puts s}