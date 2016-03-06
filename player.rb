require "pry"

class Player
	def initilaize
		
	end

	def num_players
		puts "How many players? Choose 0 - 2"
		@players = gets.chomp.to_i
		@players

	end

	def name
		puts "What is your name?"
		@player_name = gets.chomp
		@player_name
	end

	def choose_piece
	  puts "Would you like to be 'X' or 'O'?"
	  marker = gets.chomp.upcase
	  until ["X", "O"].include?(marker)
	    puts "Sorry. You have to choose 'X' or 'O'?"
	    marker = gets.chomp.upcase
	  end
	  @piece = marker
	end

	def piece
		@piece
	end

	def make_move(board)
	  puts "#{@player_name.capitalize}, please choose a space to move to. (1-9)"
	  board.display
	  puts
	  choice = gets.chomp.to_i
	  puts
	  
	  until (1..9).include?(choice)
	    puts "You have to choose an available board position (1-9). Please pick again."
	    board.display
	    choice = gets.chomp.to_i
	  end

	  choice
	end

end
