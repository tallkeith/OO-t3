require "pry"

require "./board"
require "./game"
require "./player"
require "./computer"


game = Game.new(9, "Keith", "Compy")
board = Board.new(9)
player = Player.new
computer = Computer.new


game.play(board, player, computer)