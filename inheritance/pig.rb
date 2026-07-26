#! usr/bin/env ruby
require_relative '../learning'

class Pig < Animal 

    def initialize
        self.noise="Grrr"
        self.name="Pigyy"
    end 

    def fly
        puts "fly as free bird"
    end
        
end


