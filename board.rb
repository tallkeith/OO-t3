class Board
	def initialize(size)
		@size = []
		@board = (1..size).to_a
		
	end

	WINS = [[1,2,3],
	        [4,5,6],
	        [7,8,9],
	        [1,4,7],
	        [2,5,8],
	        [3,6,9],
	        [1,5,9],
	        [3,5,7]]


	def display
		3.times do |row|
			puts @board[row * 3, 3].join(" | ")
		end
	end

	def available_moves(board)
	  @board.select { |piece| @piece.is_a?(Fixnum) }
	end

	def place(player, move)
		@board[player.make_move(@board) - 1].push(player.piece)
	end

	def player_move(board, player)
		
		move = player.make_move(board)
		place(player, move)
		@board.display
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

# until @board.available_moves(board).include?(choice)
# 	    puts "You have to choose an available board position. Please pick again."
# 	    choice = gets.chomp.to_i
# 	  end


	def tic_tac_toe
	  
	#   current_player = choose_player
	#   greeting
	#   until game_over?(board)
	#     move = take_turn(board, current_player)
	#     board[move] = current_player
	#     current_player = switch_player(current_player) unless game_over?(board)
	#   end
	#   finito(current_player, board)
	end

end
