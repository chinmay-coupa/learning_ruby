string="++--==//"

count=20

while count>=0 do
    puts string
    first=string[0]
    rest=string[1..-1]
    string=rest+first
    count-=1
end