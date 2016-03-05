class Player
	def initilaize
	end

	def name
		puts "What is your name?"
		@player_name = gets.chomp
	end

	def take_turn(board, player)
	  show_board(board)
	  puts "Player #{player}, please choose a space to move to. (1-9)"
	  choice = gets.chomp.to_i
	  until available_moves(board).include?(choice)
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
