fruits=['appple','banana','jackfruit']

fruits.each do |fruit|
    puts fruit.capitalize
end

car={
    "brand"=>"ford",
    "name"=>"mustang",
    "price"=>100
}

car.each do |k,v|
    puts "#{k} : #{v}"
end