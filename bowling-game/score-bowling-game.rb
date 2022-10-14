class BowlingGameScorer
  attr_reader :pins

  def initialize(pins)
    @pins = pins
  end

  def total_score
    i = 0
    total_to_add = 0
    while i < pins.length
      if pins[i] == "-"
        pins[i] = 0        
      end
      if pins[i] == "/"
        pins[i] = 10 - pins[i - 1]
        total_to_add += pins[i + 1] # or get rid of total_to_add and do: pins[i + 1] = pins[i +1] * 2
      end
      i += 1
    end
    pins.sum + total_to_add
  end

end