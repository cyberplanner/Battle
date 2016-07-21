require 'player'

describe Player do
  subject(:player) { described_class.new("Player1") }

  it "expects player to have a name" do
    expect(player.name).to eq "Player1"
  end

end
