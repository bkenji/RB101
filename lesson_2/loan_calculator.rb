### Assignment: Loan Calculator ###
# =========
# (the comments that follow are my own version of "pseudo-code". I think of it as somewhere between the "informal" and the "formal 
# pseudo-code examples that Chris showed us in the lesson videos." Is this acceptable practice?

# ========
# Data definitions: 

# input:
#    loan amount  => Integer
#    Annual Percentage Rate (APR) => Float
#    Loan Duration (years) => Integer

# output:
#    monthly interest rate => Float
#    loan duration in months  => Integer
#    monthly payment => Float

# =========
# Methods to be used:
#    prompt(message) => adds "=>" to prompts
#    valid_amount?(amount) => checks if amount == float
#    valid_duration?(duration) => checks if duration == integer
#    valid_apr?(apr) => checks if APR == float
#    monthly_duration(duration) => converts from annual to monthly duration
#    monthly_rate(rate) => converts from annual to monthly rate
#    monthly_payment => calculates monthly payment using formula m = p * (j / (1 - (1 + j)**(-n)))

# ========
require 'yaml'
MSG = YAML.load_file("loan_calculator_msg.yml")

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def valid_amount?(amount)
  integer?(amount) || float?(amount)
end

def monthly_payment(amount, monthly_duration, monthly_rate)
  payment = amount.to_f * (monthly_rate / (1 - (1 + monthly_rate) **( - monthly_duration)))
end

def monthly_interest_rate(apr)
  apr / 12
end

def animation(message)
print(message)
  6.times do 
    print(".")
    sleep(0.5)
    end
  puts("")
  
end

def bar_animation
 35.times do 
    print(".")
    sleep(0.05)
    end
   
  puts("")
  end


prompt(MSG['welcome'])
bar_animation
sleep(0.5)
prompt("")
sleep(0.5)

loop do
  amount = ""
  loop do
    prompt(MSG['amount'])
    amount = gets.chomp

    if valid_amount?(amount)
    break
    else
      prompt(MSG['amount_invalid'])
    end
  end

  apr = ""
  loop do    
  prompt(MSG['apr'])
  apr = gets.chomp

    if valid_amount?(apr)
      break
    else
    prompt(MSG['apr_invalid'])
    end
  end

  loan_duration = ""
  loop do
  prompt(MSG['duration'])
  loan_duration = gets.chomp
    if integer?(loan_duration)
      break
    else
    prompt(MSG['duration_invalid'])
    end
  end

  apr = apr.to_f / 100
  
  loan_duration_months = loan_duration.to_i * 12

  animation("Calculating monthly rate...")
  sleep(0.3)

  prompt("Your monthly rate will be %#{format('%.3f', monthly_interest_rate(apr))}")
  sleep(1)
  puts("")
  animation("Now calculating your monthly payment...")
  sleep(0.3)

  prompt("Your monthly payment will consist of $#{format('%.2f', monthly_payment(amount, loan_duration_months, monthly_interest_rate(apr)))}")
  sleep(1)

  bar_animation

  prompt(MSG['another_calculation?'])
  answer = gets.chomp.downcase
  break unless answer == "y"
end
prompt(MSG['goodbye'])