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

# class Animal 
#     attr_accessor :noise,:color

#     def initialize(options={})
#         @noise=options[:noise]|| "Oink"
#         puts "animal initialised"
#     end
# end 

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

class Product 
    attr_accessor :price,:color
    def initialize(price=0)
        @price=price
    end 

    def self.exclusive
        Product.new(45)
    end 

    def self.standard
        Product.new(30)
    end 

    def self.discounted
        Product.new(15)
    end 

end    

class Animal 
    @@count_animals=0
    attr_accessor :noise , :name

    def initialize(options={})
        @noise=options[:noise] || 'Grrr'
        @name=options[:name] || 'mammal'
        @@count_animals+=1
    end
    
    def self.types
        ['pig','Dog','Lion','tiger']
    end 

    def self.create_pig
        Animal.new({noise:"oink",name:"piguuuuu"})
    end

    def self.count_animals
        @@count_animals
    end
end

class Bicycle 
    @@wheels=2                          # class attribute
    attr_accessor :color,:company

    def initialize(dict={})
        @color=dict[:color] || "Black"
        @company=dict[:company] || "Hero"
    end
    
    def description
        puts "color of cycle is:#{@color} ,is of company #{@company} and has #{@@wheels} wheels"
    end 

end 

class BlogPost 
    @@statuses=["draft","post","pusblished","deleted"]

    # class reader method 
    def self.statuses
        @@statuses
    end

    # class writer method 
    def self.statuses=(array)
        return if !array.is_a?(Array)
        @@statuses=array
    end

end

