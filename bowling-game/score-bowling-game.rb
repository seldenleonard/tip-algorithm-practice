# https://gist.github.com/jplong91/e21694d7f8a07c874cc3d81408c6a762

class BowlingGameScorer
  attr_reader :pins

  def initialize(pins)
    @pins = pins
  end

  def total_score
    i = 0
    total_to_add = 0
    pins_all_nums = pins
    while i < pins_all_nums.length
      if pins_all_nums[i].string?
        # GOAL HERE IS THIS: create a duplicate array to pins, which is pins_all_nums, and then in pins_all_nums, replace all strings (strikes, spares, and gutterballs) with integer values -- kind of like i already did below. However, in order to get around the error im currently getting (where strikes are looking ahead to values in the array to make calculations but then those values are strings), I need to not only replace all the strings with integers, but i also need to insert new 0 values in the array after each strike

      end
      i += 1
    end

    i = 0
    while i < pins.length
      
      # GUTTER-BALL
      if pins[i] == "-"
        pins[i] = 0        
      end

      # SPARE
      if pins[i] == "/"
        pins[i] = 10 - pins[i - 1]
        total_to_add += pins[i + 1] # or get rid of total_to_add and do: pins[i + 1] = pins[i +1] * 2
      end

      # STRIKE
      if pins[i] == "X"
        pins[i] = 10
        total_to_add += pins[i + 1] + pins[i + 2]
      end

      i += 1
    end
    pins.sum + total_to_add
  end

end