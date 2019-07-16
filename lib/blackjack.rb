def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11)+1
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 # code #get_user_input here
 puts "Type 'h' to hit or 's' to stay."
 $play=gets
end

def invalid_command
 # code invalid_command here
  if $play != "s" && $play != "h"
    puts "Please enter a valid command"
  end
end


def hit?(current)
  # code hit? here
  prompt_user
  decide=get_user_input
  if decide=="h"
    hand=current+deal_card
  elsif decide== "s"
    hand=current
  else
    invalid_command
    prompt_user
  end
  return hand
end




def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first=deal_card
  second=deal_card
  firstround=first+second
  display_card_total(firstround)
  return firstround
  
end




#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand=initial_round
  until hand >=21
    firstask=hit?(hand)
    if firstask>hand
      hand=firstask
      display_card_total(hand)
    else
      prompt_user
      return hand
    end
  end
  if hand >21
    end_game(hand)
  end
end