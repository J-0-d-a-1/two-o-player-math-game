class Question

  attr_reader :number1, :number2, :answer

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def ask_question
    print "> "
    player_input = gets.chomp.to_i
    if player_input > 0
      return player_input
    else
      puts "Please input valid number."
      return self.ask_question
    end
  end

end