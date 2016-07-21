require 'game'

describe Game do
  subject(:game) { described_class.new("Player1", "Player2") }
  let(:player1) {double :player1}
    it 'Game should take two players' do
      expect(game.players).to eq ["Player1", "Player2"]
    end

    it 'it attacks a player' do
      expect(player1).to receive(:hit)
      game.attack(player1)
    end
    #it 'player one attacks player 2' do
    #  expect{ game.attack(players) }.to
    #end
end
