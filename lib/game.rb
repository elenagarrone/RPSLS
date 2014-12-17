class Game

  attr_accessor :player, :computer_choice, :winner

  def initialize
    @player = nil
    @computer_choice = nil
    @winner = nil
  end

  def computer_choose_randomly
    choices = ["ROCK", "PAPER", "SCISSORS", "LIZARD", "SPOCK"]
    @computer_choice = choices.sample
  end

end
