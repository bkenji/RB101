def list_digits(num)
num.to_s.split(//).map {|n| n.to_i}
end

p list_digits(84921)