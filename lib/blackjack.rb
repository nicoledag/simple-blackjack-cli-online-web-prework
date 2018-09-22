def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 answer = gets.chomp
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round

  first_card = deal_card

  second_card = deal_card

  card_total = first_card + second_card

puts "Your cards add up to #{card_total}"
  return card_total

end

def hit?(current_card_total)

prompt_user
answer = get_user_input

if answer ==  's'
  return current_card_total

  elsif answer == 'h'
  current_card_total += deal_card
      return current_card_total
    else
      invalid_command

    end
  end


def invalid_command
prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome

card_total = initial_round
until card_total > 21

 card_total = hit?(card_total)
 display_card_total(card_total)

end_game(card_total)

 end
end
