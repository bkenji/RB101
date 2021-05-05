range = (1..99).to_a
even = []
range.map do |n| 
  even.push(n) if n % 2 == 0 
end

puts even

puts ""
#further exploration 

def even_numbers(n)
  unless n >= 99
    puts n
    even_numbers(n + 2)
  end
end

puts even_numbers(2)

puts ""

(1..99).map {|n| puts n if n.even?}