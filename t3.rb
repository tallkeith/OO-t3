require "pry"

require "./board"
require "./game"
require "./player"
require "./computer"


game = Game.new
board = Board.new(board)

game.greeting
board.display