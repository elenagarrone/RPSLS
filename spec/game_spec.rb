require 'game'

describe Game do

  let(:game) {Game.new}

  it "should be initialized with a player" do
    expect(game.player).to eq(nil)
  end

end
