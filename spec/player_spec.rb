require 'player'

describe Player do

  it "should have a name" do
    player = Player.new('Elena')
    expect(player.name).to eq('Elena')
  end

  it "should not have a weapon wen initialized" do
    player = Player.new('Elena')
    expect(player.weapon).to eq(nil)
  end

end
