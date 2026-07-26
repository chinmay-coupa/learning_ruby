#! usr/bin/env ruby
require_relative '../learning'

class Cow < Animal 

    def initialize
        self.noise="Moo"
        self.name="jack"
    end 

    # method overriding
    def sleep 
        puts "cow is sleeping with mhussh sound"
    end

    #method extension
    def jump
        puts "I jumped into the sky"
    end 
    
end

