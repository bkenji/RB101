puts "What is the bill amount?"
bill = gets.chomp.to_f.round(2)

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f.round(2)
tip = (tip_percentage / 100) * bill
total = tip + bill
puts "The tip is $#{"%.2f" % tip}"
puts "The total is $#{"%.2f" % total}"