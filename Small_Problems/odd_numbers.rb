range = (1..99).to_a
odd = []
range.map do |n| 
  odd.push(n) if n % 2 != 0 
end

puts odd