require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  subject(:game) { described_class.new(player1, player2) }

    it 'Game should take two players' do
      expect(game.players).to eq [player1, player2]
    end
    describe '#player1' do
      it 'retrieves the first player' do
        expect(game.player1).to eq player1
      end
    end

    describe '#player2' do
      it 'retrieves the second player' do
        expect(game.player2).to eq player2
      end
    end

    it 'it attacks a player' do
      expect(player1).to receive(:hit)
      game.attack(player1)
    end

end
