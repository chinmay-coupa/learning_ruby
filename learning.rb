class Person 
    attr_accessor :first_name,:last_name

    def first_and_last_name
        "#{first_name} #{last_name}"
    end
    
    def initial_and_last_name
        "#{get_initial(first_name)} #{last_name}"
    end

private
    def get_initial(name)
        name[0]+"."
    end

    def say_hello 
        "Hellooo.."
    end
end


# class Animal
#     def set_noise
#         @noise="oink"
#     end

#     def make_noise
#         @noise
#     end
# end

# class Animal

#     # setter
#     def noise=(value)
#         @noise=value
#     end 

#     # getter
#     def noise   #methods
#         @noise  #instance variable
#     end

# end 

class Animal 
    attr_accessor :noise,:color

    def initialize(options={})
        @noise=options[:noise]|| "Oink"
        puts "animal initialised"
    end
end 

class Radio 

    attr_reader :volume 
    def volume=(value)
        return if value<0 || value>10
        @volume=value
    end 

    def crank_it_up
        self.volume=11
    end 

    def volume_status
        puts "Volume : #{volume}"
    end 

end


    
        