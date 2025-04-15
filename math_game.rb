require './player.rb'
require './question.rb'
require './turn.rb'

class MathGame

  attr_reader :player1, :player2, :current_player, :another_player

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @current_player = @player1
    @another_player = @player2
  end

  def start
    while player1.alive? && player2.alive?
      turn = Turn.new(current_player, another_player)
      turn.play_turn
      if current_player.alive?
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        puts "--- NEW TURN ---"
        self.switch_player
      else
        puts "#{another_player.name} wins with a score of #{another_player.lives}/3"
        puts "--- GAME OVER ---"
        puts "Good bye!"
      end
    end
  end

  def switch_player
    @current_player, @another_player = @another_player, @current_player
  end


end