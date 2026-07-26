require_relative 'sofabed.rb'
s1=SofaBed.new
s1.is_bed=1
s1.breadth=5
s1.full_length=10
puts "Area of bed is:#{s1.area}"

s2=SofaBed.new
s2.is_bed=0
s2.breadth=5
s2.full_length=5
puts "Area of sofa is:#{s2.area}"