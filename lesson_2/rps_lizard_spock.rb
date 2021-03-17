require 'yaml'
require "pry"

MSG = YAML.load_file("rps_lizard_spock_messages.yml")
VALID_CHOICES = %w[rock paper scissors lizard spock]
SHORTHANDS = %w[r p s l k]
WINNING_CHOICES = {
  rock: %w[lizard scissors],
  paper: %w[rock spock],
  scissors: %w[lizard paper],
  spock: %w[scissors rock],
  lizard: %w[paper spock]
}

score = {
  player: 0,
  computer: 0
}

def prompt(message)
  puts("=> #{message}")
end

def clear_screen
  system("clear")
end

def line_break
  2.times { puts "" }
end

def welcome_animation(title)
  bar_animation

  text_animation(title)

  bar_animation
end

def bar_animation
  print(" ")
  6.times do
    print(":")
    sleep(0.05)
  end
  print(" ")
end

def text_animation(text)
  text.each_char do |char|
    print char, ''
    sleep(0.05)
  end
end

def line_animation(text)
  text.each_line do |char|
    print char, ''
    sleep(0.6)
  end
end

def choice_trans(shorthand)
  case shorthand
  when "r" then "rock"
  when "p" then "paper"
  when "s" then "scissors"
  when "l" then "lizard"
  when "k" then "spock"
  else
    shorthand
  end
end

def winner?(player1, player2)
  WINNING_CHOICES[player1.to_sym].include?(player2)
end

def winning_msg(player, computer)
  sleep(0.8)
  action(player, computer)
  sleep(0.8)
  line_break
  prompt(MSG["win"])
  sleep(0.8)
end

def losing_msg(computer, player)
  sleep(0.8)
  action(computer, player)
  sleep(0.8)
  line_break
  prompt(MSG["lose"])
  sleep(0.8)
end

def tie_msg
  sleep(0.5)
  prompt(MSG["tie"])
  sleep(0.5)
end

def display_result(player, computer)
  if winner?(player, computer)
    winning_msg(player, computer)
  elsif winner?(computer, player)
    losing_msg(computer, player)
  else
    tie_msg
  end
end

def scissors_win(winner, loser)
  if winner == "scissors" && loser == "paper"
    prompt(MSG["scissors_paper"])
  elsif winner == "scissors" && loser == "lizard"
    prompt(MSG["scissors_lizard"])
  end
end

def paper_win(winner, loser)
  if winner == "paper" && loser == "rock"
    prompt(MSG["paper_rock"])
  elsif winner == "paper" && loser == "spock"
    prompt(MSG["paper_spock"])
  end
end

def rock_win(winner, loser)
  if winner == "rock" && loser == "lizard"
    prompt(MSG["rock_lizard"])
  elsif winner == "rock" && loser == "scissors"
    prompt(MSG["rock_scissors"])
  end
end

def lizard_win(winner, loser)
  if winner == "lizard" && loser == "spock"
    prompt(MSG["lizard_spock"])
  elsif winner == "lizard" && loser == "paper"
    prompt(MSG["lizard_paper"])
  end
end

def spock_win(winner, loser)
  if winner == "spock" && loser == "scissors"
    prompt(MSG["spock_scissors"])
  elsif winner == "spock" && loser == "rock"
    prompt(MSG["spock_rock"])
  end
end

def action(winner, loser)
  scissors_win(winner, loser)
  paper_win(winner, loser)
  rock_win(winner, loser)
  lizard_win(winner, loser)
  spock_win(winner, loser)
end

def score_count(player, computer, score)
  if winner?(player, computer)
    score[:player] += 1
    prompt("You get one point!")
  elsif winner?(computer, player)
    score[:computer] += 1
    prompt("The Computer gets one point!")
  else
    prompt("No points awarded for the tie.")
  end
end

def display_score(name, score)
  line_animation("#{name}: #{score[:player]}")
  bar_animation
  line_animation("Computer: #{score[:computer]}")
  line_break
end

def victory_msg(name, score)
  line_break
  prompt("Congratulations, #{name}, you are the Winner!")
  prompt("Your final score is #{score[:player]}." \
    "The Computer's final score is #{score[:computer]}.")
  text_animation("Resetting score...")
  line_break
  reset_total(score)
end

def defeat_msg(score)
  line_break
  prompt "The Computer is the Winner!"
  prompt("Your final score is #{score[:player]}." \
    "The Computer's final score is #{score[:computer]}.")
  text_animation("Resetting score...")
  line_break
  reset_total(score)
end

def game_over(score, name)
  loop do
    if score[:player] == 5
      victory_msg(name, score)
    elsif score[:computer] == 5
      defeat_msg(score)
    end
    break
  end
end

def reset_total(score)
  score[:player] = 0
  score[:computer] = 0
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

  clear_screen
  answer == "yes" || answer == "y"
end

def valid_answer?(answer)
  %w(y yes n no).include? answer
end

clear_screen
welcome_animation(MSG["welcome_title"])
sleep(0.7)
line_break

prompt(MSG["name"])
name = gets.chomp.capitalize
line_break
prompt "Hello, #{name}! First, some important reading:"
sleep(0.7)
line_break
welcome_animation("RULES OF THE GAME")
line_break
line_animation(MSG["rules"])
sleep(0.7)
line_break
prompt("Press Enter to continue...")
line_break
sleep(1)
gets
welcome_animation(" l o a d i n g     g a m e ")
line_break
sleep(0.7)
clear_screen

line_break

loop do
  choice = ""
  display_score(name, score)

  loop do
    prompt("Choose one, #{name}:")
    sleep(0.7)
    line_animation(MSG['choices'])
    sleep(0.7)

    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice) || SHORTHANDS.include?(choice)
      break
    else
      prompt(MSG["invalid_choice"])
    end
  end

  comp_choice = VALID_CHOICES.sample

  line_animation(MSG['one_two_three'])
  line_break

  prompt("You chose: #{choice_trans(choice)}")
  sleep(0.8)
  prompt("Computer chose: #{comp_choice}")
  sleep(0.6)

  display_result(choice_trans(choice), comp_choice)

  score_count(choice_trans(choice), comp_choice, score)

  line_break

  display_score(name, score)

  line_break

  game_over(score, name)

  break unless play_again?
end

prompt(MSG["goodbye"])
