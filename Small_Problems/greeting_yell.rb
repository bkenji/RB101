

print "What is your name? "
name = gets.chomp

greeting = "Hello, #{name.capitalize}. Nice to meet you."
yell = "HELLO, #{name.chop.upcase}. WHY ARE WE SCREAMING?"

name.end_with?("!") ? (puts yell) : (puts greeting)
