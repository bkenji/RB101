# sum all elements of array
# divide sum by number of elements
# result needs to be a positive integer

def average(array)
  if array.sum <= 0
      puts "The sum is not a positive integer."
  else
    array.sum / array.count
  end
end


def average_f(array)
  if array.sum <= 0
      puts "The sum is not a positive integer."
  else
    array.sum.to_f / array.count
  end
end


puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([-1, -3])
puts average([-1, 3])

puts average_f([1, 6])
puts average_f([2, 8])
puts average_f([-3, -4])