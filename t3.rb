require "pry"

require "./board"
require "./game"
require "./player"
require "./computer"


game = Game.new
board = Board.new(9)

game.greeting
board.display