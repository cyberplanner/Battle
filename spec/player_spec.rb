require 'player'

describe Player do
  subject(:player) { described_class.new("Player1") }
  let(:max_health) { described_class::MAX_HEALTH }
  let(:minimum_hit) { described_class::MIN_HIT }

  it "expects player to have a name" do
    expect(player.name).to eq "Player1"
  end

  it "expect player to have full health" do
    expect(player.hp).to eq max_health
  end

  it "reduces player's health by 10 hit points" do
    expect{ player.hit }.to change{ player.hp }.by -minimum_hit
  end
end
