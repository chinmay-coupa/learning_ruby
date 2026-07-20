def welcome(greet,specific="anon") 
    puts "#{greet} #{specific}"
end
welcome("hello","kevin")

def to_sentence(array,conjuction="and")
    case array.length
    when 0
        ""
    when 1
        array.first.to_s
    when 2
        array.join("#{conjuction} ")
    else
        array[0..-2].join(', ')+ ", #{conjuction} #{array[-1]}"
    end
end

arr=["red","green","blue"]

puts to_sentence(arr)
puts to_sentence(arr,'or')

def add_and_subtract(n1,n2)
    ad=n1+n2
    sb=n1-n2
    [ad,sb]
end
a,s=add_and_subtract(6,7)
puts "addition is #{a}"
puts "subtraction is #{s}"