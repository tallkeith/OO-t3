require "pry"

class Player
	def initilaize(board)
		@board = board(size)
	end

	def num_players
		puts "How many players? Choose 0 - 2"
		@players = gets.chomp.to_i

	end

	def name
		puts "What is your name?"
		@player_name = gets.chomp
	end

	def player_name
		@player_name
	end

	def make_move(board)
	  puts "#{@player_name}, please choose a space to move to. (1-9)"
	  board.display
	  puts
	  choice = gets.chomp.to_i
	  puts
	  until board.available_moves(board).include?(choice)
	    puts "You have to choose an available board position. Please pick again."
	    choice = gets.chomp.to_i
	  end
	  choice - 1
	end
	
	def choose_piece
	  puts "Would you like to be 'X' or 'O'?"
	  choice = gets.chomp.upcase
	  until ["X", "O"].include?(choice)
	    puts "Sorry. You have to choose 'X' or 'O'?"
	    choice = gets.chomp.upcase
	  end
	  @piece = choice
	end

	def piece
		@piece
	end


end
