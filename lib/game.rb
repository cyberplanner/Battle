require_relative 'player'

class Game

  attr_reader :players, :attacker, :defender

  def initialize(player1, player2)
    @players = [player1, player2]
    @attacker = @players[0]
		@defender = @players[1]
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def attack(player)
    player.hit
    switch_player
  end

  def current_player
    @current_player
  end

  def switch_player
    @attacker, @defender = @defender, @attacker
    #@current_player = @players[@players.index(@current_player)-1]
    # @players.map do | player |
    #   if player == @current_player
    #     @current_player = @players.last
    #   else
    #     @current_player = @players.first
    #   end
    # end
  end
end
