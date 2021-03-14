require 'yaml'

MSG = YAML.load_file("rps_messages.yml")
VALID_CHOICES = %w[rock paper scissors]

def prompt(message)
  puts("=> #{message}")
end

def winner?(winner, loser)
  (winner == "rock" && loser == "scissors") ||
    (winner == "paper" && loser == "rock") ||
    (winner == "scissors" && loser == "paper")
end

def display_result(player, computer)
  if winner?(player, computer)
    prompt(MSG["win"])
  elsif winner?(computer, player)
    prompt(MSG["lose"])
  else
    prompt(MSG["tie"])
  end
end

def play_again?
  answer = ""
  loop do
    prompt(MSG["play_again?"])
    answer = gets.chomp.downcase
    if valid_answer?(answer)
      break
    else
      prompt(MSG["invalid_answer"])
    end
  end
  answer == "yes" || answer == "y"
end

def valid_answer?(answer)
  %w(y yes n no).include? answer
end

prompt(MSG["welcome"])
loop do
  choice = ""
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt(MSG["invalid_choice"])
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_result(choice, computer_choice)

  break unless play_again?
end

prompt(MSG["goodbye"])
