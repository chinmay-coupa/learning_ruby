require_relative 'learning.rb'

Chinmay=Person.new
Chinmay.first_name="chinmay"
Chinmay.last_name="ghodake"
puts Chinmay.first_and_last_name
puts Chinmay.initial_and_last_name


pig1=Animal.new
pig1.color="pink"
puts pig1.noise
puts pig1.color

radio1=Radio.new
radio1.volume=9
radio1.volume_status

pig2=Animal.new({noise:"oninki2"}) 
puts pig2.noise