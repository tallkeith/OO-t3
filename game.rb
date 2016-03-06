class Game
	def initialize(board, player, computer)
		@board = board
		@player = player
		@computer = computer
	end

	def play(board, player, computer)
		greeting
		board.display
		player.name
		player.choose_piece
		player.num_players
		player.make_move(board)
		
	end

	def greeting
	  puts
	  puts "Welcome to Tic Tac Toe!"
	  puts "Try to get three in a row to win..."
	  puts
	end

	def switch_player(player)
	  player == "X" ? "O" : "X"
	end

	def win?(board)
	  WINS.any? do |x, y, z|
	    board[x - 1] == board[y - 1] && board[y - 1] == board[z - 1]
	  end
	end

	def draw?(board)
	  board.all? { |piece| piece.is_a?(String) }
	end

	def game_over?(board)
	  win?(board) || draw?(board)
	end

	def finito(player, board)
	  if win?(board)
	    puts "You're awesome #{player}."
	  elsif draw?(board)
	    puts "At least you didn't lose."
	  else
	    puts "You really need to work on that."
	  end
	end

end