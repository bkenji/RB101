def random_age (name)
  age = rand(20..200) 
  if name.empty?
    name = "Teddy"
  end
  puts "#{name} is #{age} years old!"
end

puts "Type the name of the person whose age you'd like to know:"
name = gets.chomp.capitalize

puts random_age(name)