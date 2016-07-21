class Player
  MAX_HEALTH = 100
  MIN_HIT = 10
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = MAX_HEALTH
  end

  def hit
    @hp -= MIN_HIT
  end


end
