#! usr/bin/env ruby
require_relative 'cow.rb'
require_relative 'cat.rb'
require_relative 'pig.rb'

c1=Cow.new
puts c1.name
puts c1.noise
c1.sleep
c1.jump

p1=Pig.new
p1.fly
p1.sleep