
# =================
# Iterative solution:

def sum_n(n)
  (1..n).inject(:+)
end

def fact_n(n)
  (1..n).inject(:*)
end


# ==================
# Recursive solution:

def sum_n_recursive(n)
  return 0 if n <=0
  n + sum_n_recursive(n-1)
end

def fact_n_recursive(n)
  return 1 if n <=1
  n * fact_n_recursive(n-1)
end


# =================
# Validator methods: 

def valid_input?(input)
  input.downcase == "s" || input.downcase == "p"
end

def integer?(num)
  num.to_i == num
end

def positive_number?(amount)
  amount.to_i > 0
end

def valid_number?(num)
  integer?(num) && positive_number?(num)
end

def prompt(message)
  puts "=> #{message}"
end

# ==========
# Program: 

sum_or_product = ""
user_input = ""

  loop do
    prompt("Please enter an integer greater than 0:")
    user_input = gets.chomp.to_i

    if valid_number?(user_input)
      break
    else
     prompt("Invalid input. Try again... ")
    end
  end

  loop do
    prompt("Enter 's' to compute the sum, or 'p' to compute the product:")
    sum_or_product = gets.chomp.downcase

      if  valid_input?(sum_or_product)
        break
      else
       prompt("Please type 's' for sum or 'p' for product. Try again.")
      end
  end

  if sum_or_product == "s" 
    prompt(sum_n_recursive(user_input))
    else
    prompt(fact_n_recursive(user_input))
  end

  # OR, for the iterative solution, replace the code above with:

  # if sum_or_product == "s" 
  #   prompt(sum_n(user_input))
  #   else
  #   prompt(fact_n(user_input))
  # end

   



