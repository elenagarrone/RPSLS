require 'player'

describe Player do

  let(:player) { Player.new('Elena') }

  it "should have a name" do
    expect(player.name).to eq('Elena')
  end

  it "should not have a weapon wen initialized" do
    expect(player.weapon).to eq(nil)
  end

  it "should be able to choose a weapon" do
    player.weapon = "ROCK"
    expect(player.weapon).to eq("ROCK")
  end

end
