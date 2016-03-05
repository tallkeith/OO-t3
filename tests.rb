=begin
	
* GAME
	Can determine win?
	Can determine Draw?

* PLAYER
	Can player take turn?
	Can create player and give it a name
	Once created, I can get the player name and 		their piece.

* BOARD
	Can piece be placed inavailable space?
	Can full board determine a draw?
	
=end

require "pry"
require "minitest/autorun"

require "./board"
require "./game"
require "./player"
require "./computer"


class T3Test < MiniTest::Test
end

class GameTest < MiniTest::Test
	def test_can_determine_win

	end

	def test_can_determine_draw
	end
end

class BoardTest < MiniTest::Test
	def test_can_piece_be_placed_in_available_space
	end

	def test_can_full_board_determine_draw
	end
end

class PlayerTest < MiniTest::Test
	def test_can_player_take_turn
	end

	def test_player_knows_thier_piece
		keith = Player.new
		keith.stub :gets, "X" do
			keith.choose_piece
		end
		assert keith.piece == "X"
	end

	def test_can_create_player_and_give_it_a_name
	end

	def test_player_can_make_a_move
		keith = Player.new
		keith.stub :gets, "5" do
			move = keith.make_move
			assert move.is_a?(Fixnum)
			assert (1..9).include?(move)
		end
	end

	def test_can_return_player_name_and_piece
	end
end
