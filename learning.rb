dict={
    "maths"=>90,
    "english"=>80,
    "biology"=>78,
    "geography"=>34
}

z=dict.map do |k,v| 
    "#{k.capitalize} : #{v}"
end

puts z

fruits=["apple","banana","pear"]

fruits.map! do |fruit|
    if fruit=="pear" 
        fruit.capitalize
    else
        fruit
    end
end

puts fruits

arr=[1,2,3,4,5]

puts arr.inject{|memo,n| memo+n}

puts [100,37,35,26].inject{|memo,n| memo-n}

# store total length of all strings in array
x=fruits.inject(0) do |memo,fruit| 
    memo+fruit.length
end
puts x

# finding longest word in array of fruits 
x=fruits.inject do |memo,fruit|
    if fruit.length>memo.length
        fruit 
    else 
        memo
    end 
end

puts x

array=[11,45,23,67,47,10]

puts array.sort 
puts array.sort{|n1,n2| n1<=>n2}
puts array.sort{|n1,n2| n2<=>n1}

fruits=["apple","banana","pear"]
# sort alphabetically 
puts fruits.sort

# sort lengthwise 
puts fruits.sort{|f1,f2| f1.length <=> f2.length}

puts fruits.sort_by{|f| f.length}

# sorting based on key 
dict.sort{|d1,d2| d1[0]<=>d2[0]}.each{|key,value| puts "#{key}:#{value}"}

# sorting based on values
dict.sort{|d1,d2| d1[1]<=>d2[1]}.each{|key,value| puts "#{key}:#{value}"}

dict2={
    "maths"=>80,
    "english"=>70,
    "biology"=>68,
    "history"=>34
}

# merge dict2 in dict one 
# adds new keys with values
# replaces existing key values with those in dict2
puts dict.merge(dict2)

#dict2 will keep values of dict with same keys
puts dict2.merge(dict){|key,old,new| new }

puts dict2.merge(dict){|key,old,new| old }

# if old is less than new then old else new
puts dict2.merge(dict){|k,o,n| o < n ? o : n}