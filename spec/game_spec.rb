require 'game'

describe Game do

  let(:game)   { Game.new }
  let(:player) { Player.new('Elena') }

  it "should be initialized with a player" do
    expect(game.player).to eq(nil)
  end

  it "should be able to add a player and his/her name" do
    game.player = player
    expect(game.player.name).to eq('Elena')
  end

  it "should be initialized without the choice of the computer" do
    expect(game.computer_choice).to eq(nil)
  end

  it "should choose randomly for the computer" do
    game.computer_choose_randomly
    expect(game.computer_choice).not_to eq(nil)
  end

  it "should be initialized without a winner" do
    expect(game.winner).to eq(nil)
  end

  it "should know that it has a winner" do
    game.player = player
    player.weapon = "ROCK"
    game.results
    expect(game.winner).not_to eq(nil)
  end

end
