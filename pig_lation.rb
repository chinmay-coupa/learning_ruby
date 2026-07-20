VOWELS = ['a', 'e', 'i', 'o', 'u']

def find_idx_vowel(array = [])
  array.find_index { |char| VOWELS.include?(char) }
end 

def pig_latin(word = "")
  
  word = word.downcase 
  char_array = word.split("")
  
  first_vow_pos = find_idx_vowel(char_array)
  
  
  if first_vow_pos && first_vow_pos > 0
    front = char_array[0...first_vow_pos]
    main = char_array[first_vow_pos..-1]
  else
    front = []
    main = char_array
  end 
  
  main.join + front.join + 'ay'
end 


words = ['pig', 'latin', 'elevator', 'glove']

words.each do |word|
  puts "#{word}: #{pig_latin(word)}"
end
