
#idiomatic Ruby code
def reverse_sentence(string)
 string.split.reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


# brute force code (without using string#reverse)
def reverse_sentence2(string)
  index = -1
  reversed = []
  array = string.split
 
  array.each do |word| reversed.push(array[index])
    index -= 1
  end
  reversed.join (" ")
end


  
  puts reverse_sentence2('') == ''
  puts reverse_sentence2('Hello World') == 'World Hello'
  puts reverse_sentence2('Reverse these words') == 'words these Reverse'
  