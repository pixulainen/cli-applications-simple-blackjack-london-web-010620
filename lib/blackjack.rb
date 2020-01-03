require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
puts  "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
deal_once = deal_card
deal_twice = deal_card
card_total = deal_once + deal_twice
display_card_total(card_total)
card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    card_total += deal_card
  end
  return card_total
end

def invalid_command
puts 'Please enter a valid command'
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
until card_total >=21 
card_total = hit?(card_total)
display_card_total(card_total)
end
end_game(card_total)
end

