require_relative 'score-bowling-game'

RSpec.describe BowlingGameScorer do
  describe "#total_score" do
    context "for a 'basic game with no special or interesting throws'" do
      it "returns the score" do
        pins = [1,5, 4,4, 8,0, 5,3, 0,0, 4,5, 2,3, 8,1, 7,1, 1,1]

        scorer = BowlingGameScorer.new(pins)

        expect(scorer.total_score).to eq(63)
      end
    end

    context "where missed throws are marked as '-'" do
      it "returns the score" do
        pins = [1,5,  4,4,  8,'-',  5,3,  '-','-',  4,5,  2,3,  8,1,  7,1,  1,1]

        scorer = BowlingGameScorer.new(pins)

        expect(scorer.total_score).to eq(63)
      end
    end

    context "now accounting for spares, where bowler gets credit for knocking down remaining pins, AND gets the points of their next turn added to the spare"
    it "returns the score" do
      pins = [1,5,  4,4,  8,'/',  5,3,  '-','-',  4,5,  2,3,  8,'/',  7,1,  1,1]

      scorer = BowlingGameScorer.new(pins)

      expect(scorer.total_score).to eq(78)
    end


    context "now accounting for strikes, where bowler gets credit for knocking down all pins on first try, AND gets the points of the next two turns added to the strike"
    it "returns the score" do
      pins = [1,5,  4,4,  8,'/',  5,3,  'X',  4,5,  2,3,  8,'/',  7,1,  1,1]

      scorer = BowlingGameScorer.new(pins)

      if expect(scorer.total_score).to eq(97)
        `say "CORRECT!"`
      end
    end
  end
end