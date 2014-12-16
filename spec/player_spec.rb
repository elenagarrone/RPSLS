require 'player'

describe Player do

  it "should have a name" do
    player = Player.new('Elena')
    expect(player.name).to eq('Elena')
  end

end
