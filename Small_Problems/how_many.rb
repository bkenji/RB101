
def how_many(array)
  occurrences = {}
  array.uniq.map do |word|
    word = word.downcase
  occurrences[word] = array.count {|item| item.casecmp?(word)}
end
occurrences.map do |k, v|
  puts "#{k} => #{v}"
end
end



vehicles = ["car", "Car", "CAR", "caR", "SUV", "suv", "truck", "motorcycle", "motorcycle", "car", "truck"]
how_many(vehicles)