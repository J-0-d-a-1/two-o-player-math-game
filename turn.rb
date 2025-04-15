require './player.rb'
require './question.rb'

class Turn 

  attr_reader :player1, :player2, :current_player, :current_question

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @current_question = nil
  end

  def play_turn
    @current_question = Question.new
    puts "#{current_player.name}: What is #{current_question.number1} + #{current_question.number2}?"
    player_input = current_question.ask_question
    if player_input == current_question.answer
      puts "#{current_player.name}: YES! You are correct."
      display_scores
    else
      puts "#{current_player.name}: Seriously? No!"
      current_player.lose_life
      display_scores
    end
  end

  def display_scores
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

end