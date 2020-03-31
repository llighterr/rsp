require './rock_scissors_paper'

def get_user_choice
  print "(R)ock, (S)cissors, (P)aper? "
  user_choice = gets.strip.capitalize

  if ['R', 'S', 'P'].include? user_choice
    user_choice
  else
    puts "Can't understand what you want, sorry..."
    exit
  end
end

new_game = RockScissorsPaper.new(get_user_choice)
winner = new_game.show_winner

if winner == :nobody
	puts "Your choice: #{new_game.user_choice}\nComputer choice: #{new_game.computer_choice}\nNobody wins"
elsif winner == :user
	puts "Your choice: #{new_game.user_choice}\nComputer choice: #{new_game.computer_choice}\nYou win!"
else
	puts "Your choice: #{new_game.user_choice}\nComputer choice: #{new_game.computer_choice}\nComputer wins"
end
