def welcome
  puts "Welcome to the Blackjack Table"
end
  # code #welcome here

def deal_card
  card = rand(1..11)
  card
end
  # code #deal_card here

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  "#{card_total}"
end
  # code #display_card_total here

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end
  # code #prompt_user here

def get_user_input
  gets.chomp# code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
# code #end_game here

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end
# code #initial_round here

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "s"
    card_total
  elsif input == "h"
    card_total += deal_card
  else
    invalid_command
  end
  card_total
end
  # code hit? here

def invalid_command
  "Please enter a valid command"
end
  # code invalid_command here

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
    until card_total > 21 do
      card_total = hit?(card_total)
      display_card_total(card_total)
  end
      end_game(card_total)
end
