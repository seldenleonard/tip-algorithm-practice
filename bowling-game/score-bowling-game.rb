class BowlingGameScorer
  attr_reader :pins

  def initialize(pins)
    @pins = pins
  end

  def total_score
    pins.sum
  end
end