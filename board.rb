class Board
	def initialize(size)
		@size = []
		
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
		puts "
    -----------
   | #{@size[0]} | #{@size[1]} | #{@size[2]} |
   | #{@size[3]} | #{@size[4]} | #{@size[5]} |
   | #{@size[6]} | #{@size[7]} | #{@size[8]} |
    -----------
"
	end

	def available_moves(board)
	  board.select { |piece| piece.is_a?(Fixnum) }
	end

	def tic_tac_toe
	  board = (1..9).to_a
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
