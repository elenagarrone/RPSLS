class Game

  attr_accessor :player, :computer_choice, :winner

  def initialize
    @player = nil
    @computer_choice = nil
    @winner = nil
  end

  BEATS = { "ROCK" => ["SCISSORS", "LIZARD"],
            "PAPER" => ["ROCK", "SPOCK"],
            "SCISSORS" => ["PAPER", "LIZARD"],
            "LIZARD" => ["PAPER", "SPOCK"],
            "SPOCK" => ["SCISSORS", "ROCK"] }

  def computer_choose_randomly
    choices = ["ROCK", "PAPER", "SCISSORS", "LIZARD", "SPOCK"]
    @computer_choice = choices.sample
  end

  def results
    computer_choose_randomly
    @winner = 'draw' if @player.weapon == @computer_choice
    @winner = @player.name if BEATS[@player.weapon].include?(@computer_choice)
    @winner = 'The computer' if BEATS[@computer_choice].include?(@player.weapon)
  end

end
