require_relative 'sofa.rb'

# if is_bed is 0 then simply return super
class SofaBed < Sofa
    attr_accessor :full_length , :is_bed
    def area
        is_bed ? full_length * breadth : super
    end
    

end