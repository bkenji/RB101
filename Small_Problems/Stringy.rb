def stringy(int, starting_digit = 1)
  array =[]
  index = int
  
  unless starting_digit == 0
    while index > 0
    if index.odd? 
        array.push("1")
        index -= 1
        else
          array.push("0")
          index -= 1
        end
      end

      if array[0] == "0"
        array.reverse! unless starting_digit.zero?
      end

    string = array.join
    
  else

    while index > 0
      if index.odd? 
        array.push("0")
        index -= 1
        else
          array.push("1")
          index -= 1
        end
      end
  
      if array[0] == "1"
        array.reverse!
      end
  
      string = array.join
  end
end


puts stringy(6)
puts stringy(9) 
puts stringy(4) 
puts stringy(5) 
puts stringy(11)
puts stringy(5, 0)
puts stringy(4, 0)
puts stringy(11,0)