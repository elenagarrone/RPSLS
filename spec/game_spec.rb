require 'game'

describe Game do

  let(:game)   {Game.new}
  let(:player) {Player.new('Elena')}

  it "should be initialized with a player" do
    expect(game.player).to eq(nil)
  end

  it "should be able to add a player and his/her name" do
    game.player = player
    expect(game.player.name).to eq('Elena')
  end

end
